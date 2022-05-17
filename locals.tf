locals {
  cloudwatch_log_group_name        = var.use_cloudwatch_log_group_name_prefix ? null : var.cloudwatch_log_group_name
  cloudwatch_log_group_name_prefix = var.use_cloudwatch_log_group_name_prefix ? format("%s-", var.cloudwatch_log_group_name) : null
}
