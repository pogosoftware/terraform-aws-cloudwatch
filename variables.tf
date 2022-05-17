##########################################################################
### CLOUDWATCH_LOG_RESOURCE_POLICY
##########################################################################
variable "create_cloudwatch_log_resource_policy" {
  default     = true
  description = "Determinate to create `cloudwatch_log_resource_policy` resource or not"
  type        = bool
}

variable "cloudwatch_log_resource_policy_document" {
  default     = null
  description = "Required if `create_cloudwatch_log_resource_policy` is set to `true`. Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters"
  type        = string
}

variable "cloudwatch_log_resource_policy_name" {
  default     = null
  description = "Required if `create_cloudwatch_log_resource_policy` is set to `true`. Name of the resource policy"
  type        = string
}

##########################################################################
### CLOUDWATCH_LOG_GROUP
##########################################################################
variable "create_cloudwatch_log_group" {
  default     = true
  description = "Determinate to create `cloudwatch_log_group` resource or not"
  type        = bool
}

variable "use_cloudwatch_log_group_name_prefix" {
  default     = null
  description = "Determinate to use `name_prefix` or not"
  type        = bool
}

variable "cloudwatch_log_group_name" {
  default     = null
  description = "The name of the log group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "cloudwatch_log_group_retention_in_days" {
  default     = null
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire"
  type        = number
}

variable "cloudwatch_log_group_kms_key_id" {
  default     = null
  description = "The ARN of the KMS Key to use when encrypting log data"
  type        = string
}

variable "cloudwatch_log_group_tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
