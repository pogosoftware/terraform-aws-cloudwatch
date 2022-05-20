output "arn" {
  description = "The ARN of the CloudWatch Metric Alarm"
  value       = aws_cloudwatch_metric_alarm.this.arn
}

output "id" {
  description = "The ID of the health check"
  value       = aws_cloudwatch_metric_alarm.this.id
}
