variable "ip_groups" {
  description = <<EOT
Map of ip_groups, attributes below
Required:
    - cidr_blocks
    - group_name
EOT

  type = map(object({
    cidr_blocks = set(string)
    group_name  = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

