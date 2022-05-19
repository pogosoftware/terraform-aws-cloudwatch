##########################################################################
### CLOUDWATCH_LOG_RESOURCE_POLICY
##########################################################################
output "cloudwatch_log_resource_policy_id" {
  description = "The name of the CloudWatch log resource policy"
  value       = try(module.cloudwatch_log_resource_policy[0].id, "")
}

##########################################################################
### CLOUDWATCH_LOG_GROUP
##########################################################################
output "cloudwatch_log_group_arn" {
  description = "The Amazon Resource Name (ARN) specifying the log group"
  value       = try(module.cloudwatch_log_group[0].arn, "")
}
