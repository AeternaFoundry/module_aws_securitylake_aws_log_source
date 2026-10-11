variable "securitylake_aws_log_sources" {
  description = <<EOT
Map of securitylake_aws_log_sources, attributes below
Optional:
    - region
    - source (block):
        - accounts (optional)
        - regions (required)
        - source_name (required)
        - source_version (optional)
EOT

  type = map(object({
    region = optional(string)
    source = optional(list(object({
      accounts       = optional(set(string))
      regions        = set(string)
      source_name    = string
      source_version = optional(string)
    })))
  }))
}

