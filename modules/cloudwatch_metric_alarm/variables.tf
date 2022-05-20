##########################################################################
### REQUIRED
##########################################################################
variable "alarm_name" {
  description = "The descriptive name for the alarm. This name must be unique within the user's AWS account"
  type        = string
}

variable "comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models."
  type        = string
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  type        = number
}

##########################################################################
### OPTIONAL
##########################################################################
variable "metric_name" {
  default     = null
  description = "The name for the alarm's associated metric"
  type        = string
}

variable "namespace" {
  default     = null
  description = "The namespace for the alarm's associated metric"
  type        = string
}

variable "period" {
  default     = null
  description = "The period in seconds over which the specified statistic is applied"
  type        = number
}

variable "statistic" {
  default     = null
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`"
  type        = string
}

variable "threshold" {
  default     = null
  description = "The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models"
  type        = number
}

variable "threshold_metric_id" {
  default     = null
  description = "If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function"
  type        = string
}

variable "actions_enabled" {
  default     = true
  description = "Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true`"
  type        = bool
}

variable "alarm_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "alarm_description" {
  default     = null
  description = "The description for the alarm"
  type        = string
}

variable "datapoints_to_alarm" {
  default     = null
  description = "The number of datapoints that must be breaching to trigger the alarm"
  type        = number
}

variable "dimensions" {
  default     = null
  description = "The dimensions for the alarm's associated metric"
  type        = map(string)
}

variable "insufficient_data_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "ok_actions" {
  default     = null
  description = "The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN)"
  type        = set(string)
}

variable "unit" {
  default     = null
  description = "The unit for the alarm's associated metric"
  type        = string
}

variable "extended_statistic" {
  default     = null
  description = "The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100"
  type        = string
}

variable "treat_missing_data" {
  default     = "missing"
  description = "Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing`"
  type        = string
}

variable "evaluate_low_sample_count_percentiles" {
  default     = null
  description = "Used only for alarms based on percentiles. If you specify ignore, the alarm state will not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. The following values are supported: `ignore`, and `evaluate`"
  type        = string
}

variable "metric_queries" {
  default     = []
  description = "List of mertic queries. Enables you to create an alarm based on a metric math expression. You may specify at most 20"
  type        = any
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
