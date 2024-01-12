#output "vpc_details" {
#  value = local.subnet_ids
#}
output "vpc_id" {
  value = module.vpc.vpc_id
}
