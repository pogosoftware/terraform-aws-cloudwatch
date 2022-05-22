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
  default     = false
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

##########################################################################
### CLOUDWATCH_METRIC_ALARM
##########################################################################
variable "create_cloudwatch_metric_alarm" {
  default     = false
  description = "Determinate to create `cloudwatch_metric_alarm` resource or not"
  type        = bool
}

variable "cloudwatch_metric_alarm_name" {
  default     = null
  description = "Required if `create_cloudwatch_metric_alarm` is set to `true`. The descriptive name for the alarm. This name must be unique within the user's AWS account"
  type        = string
}

variable "cloudwatch_metric_alarm_comparison_operator" {
  default     = null
  description = "Required if `create_cloudwatch_metric_alarm` is set to `true`. The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models."
  type        = string
}

variable "cloudwatch_metric_alarm_evaluation_periods" {
  default     = null
  description = "Required if `create_cloudwatch_metric_alarm` is set to `true`. The number of periods over which data is compared to the specified threshold"
  type        = number
}

variable "cloudwatch_metric_alarm_metric_name" {
  default     = null
  description = "The name for the alarm's associated metric"
  type        = string
}

variable "cloudwatch_metric_alarm_namespace" {
  default     = null
  description = "The namespace for the alarm's associated metric"
  type        = string
}

variable "cloudwatch_metric_alarm_period" {
  default     = null
  description = "The period in seconds over which the specified statistic is applied"
  type        = number
}

variable "cloudwatch_metric_alarm_statistic" {
  default     = null
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`"
  type        = string
}

variable "cloudwatch_metric_alarm_threshold" {
  default     = null
  description = "The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models"
  type        = number
}

variable "cloudwatch_metric_alarm_threshold_metric_id" {
  default     = null
  description = "If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function"
  type        = string
}

variable "cloudwatch_metric_alarm_actions_enabled" {
  default     = true
  description = "Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`"
  type        = bool
}

variable "cloudwatch_metric_alarm_alarm_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "cloudwatch_metric_alarm_alarm_description" {
  default     = null
  description = "The description for the alarm"
  type        = string
}

variable "cloudwatch_metric_alarm_datapoints_to_alarm" {
  default     = null
  description = "The number of datapoints that must be breaching to trigger the alarm"
  type        = number
}

variable "cloudwatch_metric_alarm_dimensions" {
  default     = null
  description = "The dimensions for the alarm's associated metric"
  type        = map(string)
}

variable "cloudwatch_metric_alarm_insufficient_data_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "cloudwatch_metric_alarm_ok_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "cloudwatch_metric_alarm_unit" {
  default     = null
  description = "The unit for the alarm's associated metric"
  type        = string
}

variable "cloudwatch_metric_alarm_extended_statistic" {
  default     = null
  description = "The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100"
  type        = string
}

variable "cloudwatch_metric_alarm_treat_missing_data" {
  default     = "missing"
  description = "Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`"
  type        = string
}

variable "cloudwatch_metric_alarm_evaluate_low_sample_count_percentiles" {
  default     = null
  description = "Used only for alarms based on percentiles. If you specify ignore, the alarm state will not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. The following values are supported: `ignore`, and `evaluate`"
  type        = string
}

variable "cloudwatch_metric_alarm_metric_queries" {
  default     = []
  description = "List of mertic queries. Enables you to create an alarm based on a metric math expression. You may specify at most 20"
  type        = any
}

variable "cloudwatch_metric_alarm_tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

##########################################################################
### cloudwatch_event_rule
##########################################################################
variable "create_cloudwatch_event_rule" {
  default     = false
  description = "Determinate to create `cloudwatch_event_rule` resource or not"
  type        = bool
}

variable "cloudwatch_event_rule_name" {
  default     = null
  description = "The name of the rule. If omitted, Terraform will assign a random, unique name. Conflicts with `name_prefix`"
  type        = string
}

variable "use_cloudwatch_event_rule_name_prefix" {
  default     = false
  description = "Determinate to use `cloudwatch_event_rule_name_prefix` or not"
  type        = bool
}

variable "cloudwatch_event_rule_schedule_expression" {
  default     = null
  description = "The scheduling expression"
  type        = string
}

variable "cloudwatch_event_rule_event_bus_name" {
  default     = null
  description = "The event bus to associate with this rule. If you omit this, the `default` event bus is used"
  type        = string
}

variable "cloudwatch_event_rule_event_pattern" {
  default     = null
  description = "The event pattern described a JSON object. At least one of `schedule_expression` or `event_pattern` is required"
  type        = string
}

variable "cloudwatch_event_rule_description" {
  default     = null
  description = "The description of the rule"
  type        = string
}

variable "cloudwatch_event_rule_role_arn" {
  default     = null
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation"
  type        = string
}

variable "cloudwatch_event_rule_is_enabled" {
  default     = true
  description = "Whether the rule should be enabled. Defaults to `true`"
  type        = bool
}

variable "cloudwatch_event_rule_tags" {
  default     = null
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
