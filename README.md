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
| <a name="module_cloudwatch_log_resource_policy"></a> [cloudwatch\_log\_resource\_policy](#module\_cloudwatch\_log\_resource\_policy) | ./modules/cloudwatch_log_resource_policy | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_log_resource_policy_document"></a> [cloudwatch\_log\_resource\_policy\_document](#input\_cloudwatch\_log\_resource\_policy\_document) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Details of the resource policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string. Maximum length of 5120 characters | `string` | `null` | no |
| <a name="input_cloudwatch_log_resource_policy_name"></a> [cloudwatch\_log\_resource\_policy\_name](#input\_cloudwatch\_log\_resource\_policy\_name) | Required if `create_cloudwatch_log_resource_policy` is set to `true`. Name of the resource policy | `string` | `null` | no |
| <a name="input_create_cloudwatch_log_resource_policy"></a> [create\_cloudwatch\_log\_resource\_policy](#input\_create\_cloudwatch\_log\_resource\_policy) | Determinate to create `cloudwatch_log_resource_policy` resource or not | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_log_resource_policy_id"></a> [cloudwatch\_log\_resource\_policy\_id](#output\_cloudwatch\_log\_resource\_policy\_id) | The name of the CloudWatch log resource policy |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->