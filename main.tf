module "cloudwatch_log_resource_policy" {
  source = "./modules/cloudwatch_log_resource_policy"

  count = var.create_cloudwatch_log_resource_policy ? 1 : 0

  policy_document = var.cloudwatch_log_resource_policy_document
  policy_name     = var.cloudwatch_log_resource_policy_name
}
