module "docdb" {
  source = "https://github.com/bk1607/docudb.git"
  env = var.env
  for_each = var.docdb
  cluster_name = each.value["cluster_name"]
  engine = each.value["engine"]
  engine_version = each.value["engine_version"]
  backup = each.value["backup"]
  skip_final_snapshot = each.value["skip_final_snapshot"]
  instance_class = each.value["instance_class"]
  instance_count = each.value["instance_count"]
  docdb_subnet_group = each.value["docdb_subnet_group"]
}

module "rds" {
  source = "https://github.com/bk1607/rds.git"
  env = var.env
  for_each = var.rds
  cluster_name = each.value["cluster_name"]
  engine_name = each.value["engine_name"]
  engine_version = each.value["engine_version"]
  database_name = each.value["database_name"]
  backup = each.value["backup"]
  backup_window = each.value["backup_window"]
  instance_count = each.value["instance_count"]
  instance_class = each.value["instance_class"]
  subnet_group_name = each.value["subnet_group_name"]
}

module "elasticcache" {
  source = "https://github.com/bk1607/elasticcache.git"
  env = var.env
  for_each = var.elasticcache
  cluster_name = each.value["cluster_name"]
  engine = each.value["engine"]
  engine_version = each.value["engine_version"]
  node_type = each.value["node_type"]
  cache_nodes = each.value["cache_nodes"]
  parameter_group = each.value["parameter_group"]
  subnet_group = each.value["subnet_group"]
}