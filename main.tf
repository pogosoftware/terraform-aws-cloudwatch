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
