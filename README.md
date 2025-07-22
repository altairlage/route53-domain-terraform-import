# Route53 Domain Terraform Import

![Terraform](https://img.shields.io/badge/Terraform-%235835CC.svg?style=for-the-badge\&logo=terraform\&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge\&logo=amazon-aws\&logoColor=white)
![Shell Script](https://img.shields.io/badge/Shell_Script-%23121011.svg?style=for-the-badge\&logo=gnu-bash\&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-%232C5263.svg?style=for-the-badge\&logo=jenkins\&logoColor=white)
![Groovy](https://img.shields.io/badge/Groovy-%234299c7.svg?style=for-the-badge\&logo=apache-groovy\&logoColor=white)

## 🔍 Context

This repository aims to **automate the import of existing Route 53 hosted zones and DNS records into a new Terraform configuration**, allowing you to manage these resources as code.

The workflow follows these steps:

1. **Data extraction**: A `generate-tf-imports.sh` script uses AWS CLI to list all records in a Route 53 hosted zone and generates a Terraform imports file.
2. **Terraform configuration generation**: Based on the imports file, Terraform generates the `.tf` configuration corresponding to the zone and its records.
3. **Integration via Jenkins**: A pipeline automates the process, from generation to application, ensuring traceability and reproducibility across environments.

This is useful for **migrations**, **audits**, or **infrastructure standardization**.

## 📃 Repository Structure

* `generate-tf-imports.sh` – Shell script that generates Terraform import blocks based on a Route 53 hosted zone.
* `main.tf` – Main Terraform configuration file for defining Route 53 resources.
* `variables.tf` – Contains variable definitions used by Terraform modules.
* `backend.tf` – Configures the remote Terraform backend (e.g., S3 and DynamoDB).
* `altabuild.com.tf` – Auto-generated Terraform configuration for the specific hosted zone `altabuild.com`.
* `imports-altabuild.com.tf` – Terraform import blocks for all Route 53 records within `altabuild.com`.
* `aws_accounts.json` – Mapping of AWS accounts and their default regions for different environments (dev, qa, staging, prod).
* `Jenkinsfile` – Jenkins pipeline file to automate the process with a multibranch pipeline setup.
* `us-west-2.tfbackend` – Backend configuration for the `us-west-2` region.
* `us-west-2.tfvars` – Environment-specific Terraform variables for the `us-west-2` region.

## 🔄 Step by Step

### 1. Run the import script

```bash
./generate-tf-imports.sh <HOSTED_ZONE_ID>
```

Example:

```bash
./generate-tf-imports.sh Z1D633PJN98FT9
```

This generates an `imports-<zone_name>.tf` file with all required `import {}` blocks.

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Generate Terraform configuration from imports

```bash
terraform plan -generate-config-out=<zone_name>.tf -import-file=imports-<zone_name>.tf
```

This creates a `<zone_name>.tf` file containing the Route 53 hosted zone resources and its DNS records.

### 4. Apply the import with environment variables

```bash
terraform plan -var-file="./env/${environment}/${region}.tfvars"
terraform apply -var-file="./env/${environment}/${region}.tfvars"
```

## 🛠️ Jenkins Integration

This repository includes a `Jenkinsfile` configured for a **multibranch pipeline**, allowing each branch to be treated as an independent version of the code.

### What does the Jenkinsfile do?

* Validates AWS credentials and execution environment.
* Executes the `generate-tf-imports.sh` script with parameters.
* Runs `terraform init`, `plan`, and `apply` depending on the environment (dev, qa, staging, prod).
* Publishes artifacts and logs in Jenkins.

### How to configure in Jenkins

1. Create a **multibranch pipeline job**.
2. Set the source to this repository (GitHub or GitLab).
3. Enable automatic branch discovery.
4. Add AWS credentials using `withCredentials` or environment variables.
5. Each branch will automatically execute according to the defined pipeline.

## 💡 Benefits

* Automates **Route 53 to Terraform migration**.
* Allows **managing DNS as code**.
* CI/CD integration via Jenkins.
* Simplifies auditing and versioning of infrastructure.

## 🐛 Requirements

* AWS CLI configured (`aws configure`)
* `jq` installed for JSON processing
* Terraform >= 1.5
* Jenkins (optional for automated execution)

---

📍 **Author**: Altair Lage

🌐 **AWS Route 53 + Terraform Automation**
