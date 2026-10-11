resource "confluent_ip_group" "ip_groups" {
  for_each = var.ip_groups

  cidr_blocks = each.value.cidr_blocks
  group_name  = each.value.group_name
}

