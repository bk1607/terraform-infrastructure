output "debug_subnet_name" {
  value = lookup(local.subnet_ids, "app", null )
}
