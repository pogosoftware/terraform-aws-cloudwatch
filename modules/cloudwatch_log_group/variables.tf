##########################################################################
### OPTIONAL
##########################################################################
variable "name" {
  default     = null
  description = "The name of the log group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "name_prefix" {
  default     = null
  description = "Creates a unique name beginning with the specified prefix. Conflicts with `name`"
  type        = string
}

variable "retention_in_days" {
  default     = null
  description = "Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire"
  type        = number
}

variable "kms_key_id" {
  default     = null
  description = "The ARN of the KMS Key to use when encrypting log data"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
