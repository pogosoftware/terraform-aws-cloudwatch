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
| <a name="module_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#module\_cloudwatch\_log\_group) | ./modules/cloudwatch_log_group | n/a |
| <a name="module_cloudwatch_log_resource_policy"></a> [cloudwatch\_log\_resource\_policy](#module\_cloudwatch\_log\_resource\_policy) | ./modules/cloudwatch_log_resource_policy | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_log_group_kms_key_id"></a> [cloudwatch\_log\_group\_kms\_key\_id](#input\_cloudwatch\_log\_group\_kms\_key\_id) | The ARN of the KMS Key to use when encrypting log data | `string` | `null` | no |
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#input\_cloudwatch\_log\_group\_name) | The name of the log group. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_cloudwatch_log_group_retention_in_days"></a> [cloudwatch\_log\_group\_retention\_in\_days](#input\_cloudwatch\_log\_group\_retention\_in\_days) | Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire | `number` | `null` | no |
| <a name="input_cloudwatch_log_group_tags"></a> [cloudwatch\_log\_group\_tags](#input\_cloudwatch\_log\_group\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_cloudwatch_log_resource_policy_document"></a> [cloudwatch\_log\_resource\_policy\_document](#input\_cloudwatch\_log\_resource\_policy\_document) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters | `string` | `null` | no |
| <a name="input_cloudwatch_log_resource_policy_name"></a> [cloudwatch\_log\_resource\_policy\_name](#input\_cloudwatch\_log\_resource\_policy\_name) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Name of the resource policy | `string` | `null` | no |
| <a name="input_create_cloudwatch_log_group"></a> [create\_cloudwatch\_log\_group](#input\_create\_cloudwatch\_log\_group) | Determinate to create `cloudwatch_log_group` resource or not | `bool` | `true` | no |
| <a name="input_create_cloudwatch_log_resource_policy"></a> [create\_cloudwatch\_log\_resource\_policy](#input\_create\_cloudwatch\_log\_resource\_policy) | Determinate to create `cloudwatch_log_resource_policy` resource or not | `bool` | `true` | no |
| <a name="input_use_cloudwatch_log_group_name_prefix"></a> [use\_cloudwatch\_log\_group\_name\_prefix](#input\_use\_cloudwatch\_log\_group\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_log_group_arn"></a> [cloudwatch\_log\_group\_arn](#output\_cloudwatch\_log\_group\_arn) | The Amazon Resource Name (ARN) specifying the log group |
| <a name="output_cloudwatch_log_resource_policy_id"></a> [cloudwatch\_log\_resource\_policy\_id](#output\_cloudwatch\_log\_resource\_policy\_id) | The name of the CloudWatch log resource policy |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->