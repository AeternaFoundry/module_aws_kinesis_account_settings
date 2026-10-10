output "kinesis_account_settings_id" {
  description = "Map of id values across all kinesis_account_settings, keyed the same as var.kinesis_account_settings"
  value       = { for k, v in aws_kinesis_account_settings.kinesis_account_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kinesis_account_settings_minimum_throughput_billing_commitment" {
  description = "Map of minimum_throughput_billing_commitment values across all kinesis_account_settings, keyed the same as var.kinesis_account_settings"
  value       = { for k, v in aws_kinesis_account_settings.kinesis_account_settings : k => v.minimum_throughput_billing_commitment if v.minimum_throughput_billing_commitment != null && length(v.minimum_throughput_billing_commitment) > 0 }
}
output "kinesis_account_settings_region" {
  description = "Map of region values across all kinesis_account_settings, keyed the same as var.kinesis_account_settings"
  value       = { for k, v in aws_kinesis_account_settings.kinesis_account_settings : k => v.region if v.region != null && length(v.region) > 0 }
}

