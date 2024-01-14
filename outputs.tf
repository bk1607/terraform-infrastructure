#output "vpc_details" {
#  value = local.subnet_ids
#}
#output "vpc_id" {
#  value = module.vpc["main"].vpc_id
#}
#
#output "alb" {
#  value = module.alb["private"].alb_details["dns_name"]
#}
#output "listener_arn" {
#  value = module.alb["private"].listener_details
#}