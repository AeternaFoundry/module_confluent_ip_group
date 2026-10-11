output "ip_groups_id" {
  description = "Map of id values across all ip_groups, keyed the same as var.ip_groups except keys with no id are omitted"
  value       = { for k, v in confluent_ip_group.ip_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_groups_cidr_blocks" {
  description = "Map of cidr_blocks values across all ip_groups, keyed the same as var.ip_groups except keys with no cidr_blocks are omitted"
  value       = { for k, v in confluent_ip_group.ip_groups : k => v.cidr_blocks if v.cidr_blocks != null && length(v.cidr_blocks) > 0 }
}
output "ip_groups_group_name" {
  description = "Map of group_name values across all ip_groups, keyed the same as var.ip_groups except keys with no group_name are omitted"
  value       = { for k, v in confluent_ip_group.ip_groups : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}

