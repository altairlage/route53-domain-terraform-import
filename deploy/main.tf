terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~>5.0"
        }
    }
}

provider "aws" {
    region = var.region
    #default_tags {
    #    tags = {
    #        "wg:info:taggingversion" = "2.0.0"
    #        "wg:purpose:environment" = var.environment
    #        "wg:purpose:serviceid" = local.service_keyword
    #        "wg:purpose:product" = "infra"
    #        "wg:automation:expiry" = "never"
    #    }
    #}
}