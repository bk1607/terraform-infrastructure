env = "dev"
docdb = {
  main ={
    cluster_name = "roboshop-docdb"
    engine = "docdb"
    engine_version = "4.0.0"
    backup = 2
    skip_final_snapshot = true
    instance_class = "db.t3.medium"
    instance_count = 1
    docdb_subnet_group = "docdb_subnet_group"

  }

}

rds = {
  main = {
    cluster_name = "aurora"
    engine_name = "aurora-mysql"
    engine_version = "5.7.mysql_aurora.2.11.4"
    database_name = "dummy"
    backup = 2
    backup_window = "07:00-09:00"
    instance_count = 1
    instance_class = "db.t3.medium"
    subnet_group_name = "rds"
  }
}

elasticcache = {
  main = {
    cluster_name = "elasticcache"
    engine = "redis"
    engine_version = "6.2"
    node_type = "cache.t2.micro"
    cache_nodes = 1
    parameter_group = "default.redis6.x"
    subnet_group = "elasticcache"
  }
}

rabbitmq = {
  main = {
    instance_type = "t3.nano"

  }
}

alb = {
  private = {
    name = "private_load_balancer"
    internal = "true"
    load_balancer_type = "application"
    enable_deletion_protection = "true"
    subnets = "app"

  }
  public = {
    name = "public_load_balancer"
    internal = "false"
    load_balancer_type = "application"
    enable_deletion_protection = "true"
    subnets = "web"

  }
}

