##########################################################################
### CLOUDWATCH_LOG_RESOURCE_POLICY
##########################################################################
output "cloudwatch_log_resource_policy_id" {
  description = "The name of the CloudWatch log resource policy"
  value       = try(module.cloudwatch_log_resource_policy[0].this.id, "")
}
