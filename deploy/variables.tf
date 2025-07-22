variable "region" {
    description = "The AWS region to be used"
    type        = string
    default     = "us-west-2"
    validation {
        condition     = can(regex("^([a-z0-9-'])+$", var.region))
        error_message = "Please use a valid AWS region (eg. us-east-1)."
    }
}