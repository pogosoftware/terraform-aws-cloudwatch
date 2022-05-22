# terraform-aws-cloudwatch

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudwatch_event_rule"></a> [cloudwatch\_event\_rule](#module\_cloudwatch\_event\_rule) | ./modules/cloudwatch_event_rule | n/a |
| <a name="module_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#module\_cloudwatch\_log\_group) | ./modules/cloudwatch_log_group | n/a |
| <a name="module_cloudwatch_log_resource_policy"></a> [cloudwatch\_log\_resource\_policy](#module\_cloudwatch\_log\_resource\_policy) | ./modules/cloudwatch_log_resource_policy | n/a |
| <a name="module_cloudwatch_metric_alarm"></a> [cloudwatch\_metric\_alarm](#module\_cloudwatch\_metric\_alarm) | ./modules/cloudwatch_metric_alarm | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_event_rule_description"></a> [cloudwatch\_event\_rule\_description](#input\_cloudwatch\_event\_rule\_description) | The description of the rule | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_event_bus_name"></a> [cloudwatch\_event\_rule\_event\_bus\_name](#input\_cloudwatch\_event\_rule\_event\_bus\_name) | The event bus to associate with this rule. If you omit this, the `default` event bus is used | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_event_pattern"></a> [cloudwatch\_event\_rule\_event\_pattern](#input\_cloudwatch\_event\_rule\_event\_pattern) | The event pattern described a JSON object. At least one of `schedule_expression` or `event_pattern` is required | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_is_enabled"></a> [cloudwatch\_event\_rule\_is\_enabled](#input\_cloudwatch\_event\_rule\_is\_enabled) | Whether the rule should be enabled. Defaults to `true` | `bool` | `true` | no |
| <a name="input_cloudwatch_event_rule_name"></a> [cloudwatch\_event\_rule\_name](#input\_cloudwatch\_event\_rule\_name) | The name of the rule. If omitted, Terraform will assign a random, unique name. Conflicts with `name_prefix` | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_role_arn"></a> [cloudwatch\_event\_rule\_role\_arn](#input\_cloudwatch\_event\_rule\_role\_arn) | The Amazon Resource Name (ARN) associated with the role that is used for target invocation | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_schedule_expression"></a> [cloudwatch\_event\_rule\_schedule\_expression](#input\_cloudwatch\_event\_rule\_schedule\_expression) | The scheduling expression | `string` | `null` | no |
| <a name="input_cloudwatch_event_rule_tags"></a> [cloudwatch\_event\_rule\_tags](#input\_cloudwatch\_event\_rule\_tags) | A map of tags to assign to the resource | `map(string)` | `null` | no |
| <a name="input_cloudwatch_log_group_kms_key_id"></a> [cloudwatch\_log\_group\_kms\_key\_id](#input\_cloudwatch\_log\_group\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data | `string` | `null` | no |
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#input\_cloudwatch\_log\_group\_name) | The name of the log group. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_cloudwatch_log_group_retention_in_days"></a> [cloudwatch\_log\_group\_retention\_in\_days](#input\_cloudwatch\_log\_group\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire | `number` | `null` | no |
| <a name="input_cloudwatch_log_group_tags"></a> [cloudwatch\_log\_group\_tags](#input\_cloudwatch\_log\_group\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_cloudwatch_log_resource_policy_document"></a> [cloudwatch\_log\_resource\_policy\_document](#input\_cloudwatch\_log\_resource\_policy\_document) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters | `string` | `null` | no |
| <a name="input_cloudwatch_log_resource_policy_name"></a> [cloudwatch\_log\_resource\_policy\_name](#input\_cloudwatch\_log\_resource\_policy\_name) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Name of the resource policy | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_actions_enabled"></a> [cloudwatch\_metric\_alarm\_actions\_enabled](#input\_cloudwatch\_metric\_alarm\_actions\_enabled) | Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to `true` | `bool` | `true` | no |
| <a name="input_cloudwatch_metric_alarm_alarm_actions"></a> [cloudwatch\_metric\_alarm\_alarm\_actions](#input\_cloudwatch\_metric\_alarm\_alarm\_actions) | The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN) | `set(string)` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_alarm_description"></a> [cloudwatch\_metric\_alarm\_alarm\_description](#input\_cloudwatch\_metric\_alarm\_alarm\_description) | The description for the alarm | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_comparison_operator"></a> [cloudwatch\_metric\_alarm\_comparison\_operator](#input\_cloudwatch\_metric\_alarm\_comparison\_operator) | Required if `create_cloudwatch_metric_alarm` is set to `true`. The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models. | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_datapoints_to_alarm"></a> [cloudwatch\_metric\_alarm\_datapoints\_to\_alarm](#input\_cloudwatch\_metric\_alarm\_datapoints\_to\_alarm) | The number of datapoints that must be breaching to trigger the alarm | `number` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_dimensions"></a> [cloudwatch\_metric\_alarm\_dimensions](#input\_cloudwatch\_metric\_alarm\_dimensions) | The dimensions for the alarm's associated metric | `map(string)` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_evaluate_low_sample_count_percentiles"></a> [cloudwatch\_metric\_alarm\_evaluate\_low\_sample\_count\_percentiles](#input\_cloudwatch\_metric\_alarm\_evaluate\_low\_sample\_count\_percentiles) | Used only for alarms based on percentiles. If you specify ignore, the alarm state will not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. The following values are supported: `ignore`, and `evaluate` | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_evaluation_periods"></a> [cloudwatch\_metric\_alarm\_evaluation\_periods](#input\_cloudwatch\_metric\_alarm\_evaluation\_periods) | Required if `create_cloudwatch_metric_alarm` is set to `true`. The number of periods over which data is compared to the specified threshold | `number` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_extended_statistic"></a> [cloudwatch\_metric\_alarm\_extended\_statistic](#input\_cloudwatch\_metric\_alarm\_extended\_statistic) | The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100 | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_insufficient_data_actions"></a> [cloudwatch\_metric\_alarm\_insufficient\_data\_actions](#input\_cloudwatch\_metric\_alarm\_insufficient\_data\_actions) | The list of actions to execute when this alarm transitions into an INSUFFICIENT\_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN) | `set(string)` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_metric_name"></a> [cloudwatch\_metric\_alarm\_metric\_name](#input\_cloudwatch\_metric\_alarm\_metric\_name) | The name for the alarm's associated metric | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_metric_queries"></a> [cloudwatch\_metric\_alarm\_metric\_queries](#input\_cloudwatch\_metric\_alarm\_metric\_queries) | List of mertic queries. Enables you to create an alarm based on a metric math expression. You may specify at most 20 | `any` | `[]` | no |
| <a name="input_cloudwatch_metric_alarm_name"></a> [cloudwatch\_metric\_alarm\_name](#input\_cloudwatch\_metric\_alarm\_name) | Required if `create_cloudwatch_metric_alarm` is set to `true`. The descriptive name for the alarm. This name must be unique within the user's AWS account | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_namespace"></a> [cloudwatch\_metric\_alarm\_namespace](#input\_cloudwatch\_metric\_alarm\_namespace) | The namespace for the alarm's associated metric | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_ok_actions"></a> [cloudwatch\_metric\_alarm\_ok\_actions](#input\_cloudwatch\_metric\_alarm\_ok\_actions) | The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN) | `set(string)` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_period"></a> [cloudwatch\_metric\_alarm\_period](#input\_cloudwatch\_metric\_alarm\_period) | The period in seconds over which the specified statistic is applied | `number` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_statistic"></a> [cloudwatch\_metric\_alarm\_statistic](#input\_cloudwatch\_metric\_alarm\_statistic) | The statistic to apply to the alarm's associated metric. Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum` | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_tags"></a> [cloudwatch\_metric\_alarm\_tags](#input\_cloudwatch\_metric\_alarm\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_cloudwatch_metric_alarm_threshold"></a> [cloudwatch\_metric\_alarm\_threshold](#input\_cloudwatch\_metric\_alarm\_threshold) | The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models | `number` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_threshold_metric_id"></a> [cloudwatch\_metric\_alarm\_threshold\_metric\_id](#input\_cloudwatch\_metric\_alarm\_threshold\_metric\_id) | If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY\_DETECTION\_BAND function | `string` | `null` | no |
| <a name="input_cloudwatch_metric_alarm_treat_missing_data"></a> [cloudwatch\_metric\_alarm\_treat\_missing\_data](#input\_cloudwatch\_metric\_alarm\_treat\_missing\_data) | Sets how this alarm is to handle missing data points. The following values are supported: `missing`, `ignore`, `breaching` and `notBreaching`. Defaults to `missing` | `string` | `"missing"` | no |
| <a name="input_cloudwatch_metric_alarm_unit"></a> [cloudwatch\_metric\_alarm\_unit](#input\_cloudwatch\_metric\_alarm\_unit) | The unit for the alarm's associated metric | `string` | `null` | no |
| <a name="input_create_cloudwatch_event_rule"></a> [create\_cloudwatch\_event\_rule](#input\_create\_cloudwatch\_event\_rule) | Determinate to create `cloudwatch_event_rule` resource or not | `bool` | `false` | no |
| <a name="input_create_cloudwatch_log_group"></a> [create\_cloudwatch\_log\_group](#input\_create\_cloudwatch\_log\_group) | Determinate to create `cloudwatch_log_group` resource or not | `bool` | `true` | no |
| <a name="input_create_cloudwatch_log_resource_policy"></a> [create\_cloudwatch\_log\_resource\_policy](#input\_create\_cloudwatch\_log\_resource\_policy) | Determinate to create `cloudwatch_log_resource_policy` resource or not | `bool` | `true` | no |
| <a name="input_create_cloudwatch_metric_alarm"></a> [create\_cloudwatch\_metric\_alarm](#input\_create\_cloudwatch\_metric\_alarm) | Determinate to create `cloudwatch_metric_alarm` resource or not | `bool` | `false` | no |
| <a name="input_use_cloudwatch_event_rule_name_prefix"></a> [use\_cloudwatch\_event\_rule\_name\_prefix](#input\_use\_cloudwatch\_event\_rule\_name\_prefix) | Determinate to use `cloudwatch_event_rule_name_prefix` or not | `bool` | `false` | no |
| <a name="input_use_cloudwatch_log_group_name_prefix"></a> [use\_cloudwatch\_log\_group\_name\_prefix](#input\_use\_cloudwatch\_log\_group\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_event_rule_arn"></a> [cloudwatch\_event\_rule\_arn](#output\_cloudwatch\_event\_rule\_arn) | The Amazon Resource Name (ARN) of the rule |
| <a name="output_cloudwatch_event_rule_id"></a> [cloudwatch\_event\_rule\_id](#output\_cloudwatch\_event\_rule\_id) | The name of the rule |
| <a name="output_cloudwatch_log_group_arn"></a> [cloudwatch\_log\_group\_arn](#output\_cloudwatch\_log\_group\_arn) | The Amazon Resource Name (ARN) specifying the log group |
| <a name="output_cloudwatch_log_resource_policy_id"></a> [cloudwatch\_log\_resource\_policy\_id](#output\_cloudwatch\_log\_resource\_policy\_id) | The name of the CloudWatch log resource policy |
| <a name="output_cloudwatch_metric_alarm_arn"></a> [cloudwatch\_metric\_alarm\_arn](#output\_cloudwatch\_metric\_alarm\_arn) | The ARN of the CloudWatch Metric Alarm |
| <a name="output_cloudwatch_metric_alarm_id"></a> [cloudwatch\_metric\_alarm\_id](#output\_cloudwatch\_metric\_alarm\_id) | The ID of the health check |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->