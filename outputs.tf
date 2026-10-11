output "securitylake_aws_log_sources_id" {
  description = "Map of id values across all securitylake_aws_log_sources, keyed the same as var.securitylake_aws_log_sources"
  value       = { for k, v in aws_securitylake_aws_log_source.securitylake_aws_log_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securitylake_aws_log_sources_region" {
  description = "Map of region values across all securitylake_aws_log_sources, keyed the same as var.securitylake_aws_log_sources"
  value       = { for k, v in aws_securitylake_aws_log_source.securitylake_aws_log_sources : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securitylake_aws_log_sources_source" {
  description = "Map of source values across all securitylake_aws_log_sources, keyed the same as var.securitylake_aws_log_sources"
  value       = { for k, v in aws_securitylake_aws_log_source.securitylake_aws_log_sources : k => v.source if v.source != null && length(v.source) > 0 }
}

