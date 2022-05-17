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
