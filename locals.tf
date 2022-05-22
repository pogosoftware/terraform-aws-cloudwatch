locals {
  cloudwatch_log_group_name        = var.use_cloudwatch_log_group_name_prefix ? null : var.cloudwatch_log_group_name
  cloudwatch_log_group_name_prefix = var.use_cloudwatch_log_group_name_prefix ? format("%s-", var.cloudwatch_log_group_name) : null

  cloudwatch_event_rule_name        = var.use_cloudwatch_event_rule_name_prefix ? null : var.cloudwatch_event_rule_name
  cloudwatch_event_rule_name_prefix = var.use_cloudwatch_event_rule_name_prefix ? format("%s-", var.cloudwatch_event_rule_name) : null

  cloudwatch_event_target_rule = var.create_cloudwatch_event_rule ? module.cloudwatch_event_rule[0].name : var.cloudwatch_event_target_rule
}
