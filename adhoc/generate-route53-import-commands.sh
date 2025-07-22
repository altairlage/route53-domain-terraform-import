#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <HOSTED_ZONE_ID>"
  echo "Example: $0 Z1D633PJN98FT9"
  exit 1
fi

ZONE_ID=$1

# Get hosted zone name
ZONE_NAME=$(aws route53 get-hosted-zone --id $ZONE_ID | jq -r '.HostedZone.Name' | sed 's/\.$//')

# Sanitize the name to be used as a valid Terraform identifier
SAFE_ZONE_NAME=$(echo "$ZONE_NAME" | sed 's/[^a-zA-Z0-9]/_/g')

echo "# Terraform imports for hosted zone: $ZONE_NAME"
echo ""

# Import the hosted zone itself
echo "terraform import aws_route53_zone.${SAFE_ZONE_NAME} ${ZONE_ID}"
echo ""

# Now import all DNS record sets for this zone
aws route53 list-resource-record-sets --hosted-zone-id "$ZONE_ID" | jq -c '.ResourceRecordSets[]' | while read -r record; do
  RECORD_NAME=$(echo "$record" | jq -r '.Name' | sed 's/\.$//')
  RECORD_TYPE=$(echo "$record" | jq -r '.Type')

  # Safe name for the Terraform resource (replace invalid chars with _)
  SAFE_RECORD_NAME=$(echo "${RECORD_NAME}_${RECORD_TYPE}" | sed 's/[^a-zA-Z0-9]/_/g')

  # Terraform import ID format: <ZONE_ID>_<RECORD_NAME>_<RECORD_TYPE>
  IMPORT_ID="${ZONE_ID}_${RECORD_NAME}_${RECORD_TYPE}"

  echo "terraform import aws_route53_record.${SAFE_RECORD_NAME} ${IMPORT_ID}"
done
