#!/bin/bash
set -euo pipefail

if [ -z "$1" ]; then
  echo "Usage: $0 <HOSTED_ZONE_ID>"
  echo "Example: $0 Z1D633PJN98FT9"
  exit 1
fi

ZONE_ID=$1

# Get Hosted Zone name
ZONE_NAME=$(aws route53 get-hosted-zone --id "$ZONE_ID" | jq -r '.HostedZone.Name' | sed 's/\.$//')

# Function to sanitize names for valid Terraform identifiers
declare -A NAME_MAP
make_safe_name() {
  local raw_name="$1"

  # 1️⃣ Double original underscores
  raw_name=$(echo "$raw_name" | sed 's/_/__/g')

  # 2️⃣ Replace invalid characters with underscores
  local safe=$(echo "$raw_name" | sed 's/[^a-zA-Z0-9_]/_/g')

  # 3️⃣ If the name starts with a number, prefix it with r_
  if [[ "$safe" =~ ^[0-9] ]]; then
    safe="r_${safe}"
  fi

  # 4️⃣ Avoid duplicates by adding an incremental suffix if needed
  if [[ -n "${NAME_MAP[$safe]:-}" ]]; then
    local count="${NAME_MAP[$safe]}"
    NAME_MAP[$safe]=$((count+1))
    safe="${safe}_${count}"
  else
    NAME_MAP[$safe]=1
  fi

  echo "$safe"
}

# Safe name for the hosted zone
SAFE_ZONE_NAME=$(make_safe_name "$ZONE_NAME")

# Output filename
IMPORT_FILE="imports-${SAFE_ZONE_NAME}.tf"

echo "# Terraform import blocks for hosted zone: $ZONE_NAME" > "$IMPORT_FILE"
echo "" >> "$IMPORT_FILE"

# Import block for the hosted zone itself
cat >> "$IMPORT_FILE" <<EOF
import {
  to = aws_route53_zone.${SAFE_ZONE_NAME}
  id = "${ZONE_ID}"
}

EOF

echo "🔍 Fetching all DNS records for $ZONE_NAME ..."

# Get all DNS records in a single jq stream
RECORDS_JSON=$(aws route53 list-resource-record-sets --hosted-zone-id "$ZONE_ID" | jq -c '.ResourceRecordSets[]')

# Use process substitution so the while loop runs in the same shell
while read -r record; do
  RECORD_NAME=$(echo "$record" | jq -r '.Name' | sed 's/\.$//')
  RECORD_TYPE=$(echo "$record" | jq -r '.Type')

  # Safe name for the Terraform resource
  SAFE_RECORD_NAME=$(make_safe_name "${RECORD_NAME}_${RECORD_TYPE}")

  # Terraform import ID format: <ZONE_ID>_<RECORD_NAME>_<RECORD_TYPE>
  IMPORT_ID="${ZONE_ID}_${RECORD_NAME}_${RECORD_TYPE}"

  cat >> "$IMPORT_FILE" <<EOF
import {
  to = aws_route53_record.${SAFE_RECORD_NAME}
  id = "${IMPORT_ID}"
}

EOF

done < <(echo "$RECORDS_JSON")

echo "✅ Import file generated: $IMPORT_FILE"
echo ""
echo "You can now run:"
echo ""
echo "terraform import -generate-config-out=${SAFE_ZONE_NAME}.tf -import-file=${IMPORT_FILE}"