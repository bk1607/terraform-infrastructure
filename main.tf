#module "docdb" {
#  source = "git::https://github.com/bk1607/docudb.git"
#  env = var.env
#  db_subnet_ids = local.db_subnet_ids
#  for_each = var.docdb
#  cluster_name = each.value["cluster_name"]
#  engine = each.value["engine"]
#  engine_version = each.value["engine_version"]
#  backup = each.value["backup"]
#  skip_final_snapshot = each.value["skip_final_snapshot"]
#  instance_class = each.value["instance_class"]
#  instance_count = each.value["instance_count"]
#  docdb_subnet_group = each.value["docdb_subnet_group"]
#}
#
#module "rds" {
#  source = "git::https://github.com/bk1607/rds.git"
#  env = var.env
#  db_subnet_ids = local.db_subnet_ids
#  for_each = var.rds
#  cluster_name = each.value["cluster_name"]
#  engine_name = each.value["engine_name"]
#  engine_version = each.value["engine_version"]
#  database_name = each.value["database_name"]
#  backup = each.value["backup"]
#  backup_window = each.value["backup_window"]
#  instance_count = each.value["instance_count"]
#  instance_class = each.value["instance_class"]
#  subnet_group_name = each.value["subnet_group_name"]
#}
#
#module "elasticcache" {
#  source = "git::https://github.com/bk1607/elasticcache.git"
#  env = var.env
#  db_subnet_ids = local.db_subnet_ids
#  for_each = var.elasticcache
#  cluster_name = each.value["cluster_name"]
#  engine = each.value["engine"]
#  engine_version = each.value["engine_version"]
#  node_type = each.value["node_type"]
#  cache_nodes = each.value["cache_nodes"]
#  parameter_group = each.value["parameter_group"]
#  subnet_group = each.value["subnet_group"]
#}
#
module "rabbitmq" {
  source = "git::https://github.com/bk1607/rabbitmq.git"
}
#
#module "alb" {
#  source = "git::https://github.com/bk1607/web.git"
#  env = var.env
#  for_each = var.alb
#  name = each.value["name"]
#  internal = each.value["internal"]
#  load_balancer_type = each.value["load_balancer_type"]
#  subnets = lookup(local.subnet_ids, each.value["subnet_name"], null )
#  cidr_block = each.value["cidr_block"]
#  vpc_id = module.vpc["main"].vpc_id
#}
#
#module "app" {
#  source = "git::https://github.com/bk1607/app.git"
#  env = var.env
#  bastion = var.bastion
#  for_each = var.app
#  name = each.value["name"]
#  instance_type = each.value["instance_type"]
#  max_size = each.value["max_size"]
#  min_size = each.value["min_size"]
#  desired_capacity = each.value["desired_capacity"]
#  subnets = lookup(local.subnet_ids,each.value["subnets"], null)
#  port_number = each.value["port_number"]
#  allow_app = lookup(local.cidr_blocks,each.value["allow_app"], null)
#  vpc_id = module.vpc["main"].vpc_id
#  lb_dns_name = lookup(lookup(lookup(module.alb,each.value["alb"], null ),"alb_details",null),"dns_name",null)
#  listener_arn = lookup(lookup(lookup(module.alb,each.value["alb"], null ),"listener_details",null),"arn",null)
#  priority = each.value["priority"]
#}
#
#module "vpc" {
#  source = "git::https://github.com/bk1607/vpc_tf.git"
#  for_each = var.vpc
#  public_subnets = each.value["public_subnets"]
#  private_subnets = each.value["private_subnets"]
#
#}




