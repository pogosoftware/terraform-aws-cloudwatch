module "cloudwatch_log_resource_policy" {
  source = "./modules/cloudwatch_log_resource_policy"

  count = var.create_cloudwatch_log_resource_policy ? 1 : 0

  policy_document = var.cloudwatch_log_resource_policy_document
  policy_name     = var.cloudwatch_log_resource_policy_name
}

module "cloudwatch_log_group" {
  source = "./modules/cloudwatch_log_group"

  count = var.create_cloudwatch_log_group ? 1 : 0

  name              = local.cloudwatch_log_group_name
  name_prefix       = local.cloudwatch_log_group_name_prefix
  retention_in_days = var.cloudwatch_log_group_retention_in_days
  kms_key_id        = var.cloudwatch_log_group_kms_key_id
  tags              = var.cloudwatch_log_group_tags
}

module "cloudwatch_metric_alarm" {
  source = "./modules/cloudwatch_metric_alarm"

  count = var.create_cloudwatch_metric_alarm ? 1 : 0

  alarm_name                            = var.cloudwatch_metric_alarm_name
  comparison_operator                   = var.cloudwatch_metric_alarm_comparison_operator
  evaluation_periods                    = var.cloudwatch_metric_alarm_evaluation_periods
  metric_name                           = var.cloudwatch_metric_alarm_metric_name
  namespace                             = var.cloudwatch_metric_alarm_namespace
  period                                = var.cloudwatch_metric_alarm_period
  statistic                             = var.cloudwatch_metric_alarm_statistic
  threshold                             = var.cloudwatch_metric_alarm_threshold
  threshold_metric_id                   = var.cloudwatch_metric_alarm_threshold_metric_id
  actions_enabled                       = var.cloudwatch_metric_alarm_actions_enabled
  alarm_actions                         = var.cloudwatch_metric_alarm_alarm_actions
  alarm_description                     = var.cloudwatch_metric_alarm_alarm_description
  datapoints_to_alarm                   = var.cloudwatch_metric_alarm_datapoints_to_alarm
  dimensions                            = var.cloudwatch_metric_alarm_dimensions
  insufficient_data_actions             = var.cloudwatch_metric_alarm_insufficient_data_actions
  ok_actions                            = var.cloudwatch_metric_alarm_ok_actions
  unit                                  = var.cloudwatch_metric_alarm_unit
  extended_statistic                    = var.cloudwatch_metric_alarm_extended_statistic
  treat_missing_data                    = var.cloudwatch_metric_alarm_treat_missing_data
  evaluate_low_sample_count_percentiles = var.cloudwatch_metric_alarm_evaluate_low_sample_count_percentiles
  metric_queries                        = var.cloudwatch_metric_alarm_metric_queries
  tags                                  = var.cloudwatch_metric_alarm_tags
}

module "cloudwatch_event_rule" {
  source = "./modules/cloudwatch_event_rule"

  count = var.create_cloudwatch_event_rule ? 1 : 0

  name                = local.cloudwatch_event_rule_name
  name_prefix         = local.cloudwatch_event_rule_name_prefix
  schedule_expression = var.cloudwatch_event_rule_schedule_expression
  event_bus_name      = var.cloudwatch_event_rule_event_bus_name
  event_pattern       = var.cloudwatch_event_rule_event_pattern
  description         = var.cloudwatch_event_rule_description
  role_arn            = var.cloudwatch_event_rule_role_arn
  is_enabled          = var.cloudwatch_event_rule_is_enabled
  tags                = var.cloudwatch_event_rule_tags
}
