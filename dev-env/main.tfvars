env = "dev"
bastion = "172.31.36.202/32"
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
    name = "private-load-balancer"
    internal = "true"
    load_balancer_type = "application"
    subnet_name = "app"

  }
  public = {
    name = "public-load-balancer"
    internal = "false"
    load_balancer_type = "application"
    subnet_name = "public"

  }
}

app = {
  catalogue = {
    name = "catalogue"
    instance_type = "t3.nano"
    max_size = 4
    min_size = 1
    desired_capacity = 1
    subnets = "app"
  }
  cart = {
    name             = "cart"
    instance_type    = "t3.nano"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
  }
  shipping = {
    name             = "shipping"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
  }
  user = {
    name             = "user"
    instance_type    = "t3.nano"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
  }
  payment = {
    name             = "payment"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
  }
  frontend = {
    name             = "frontend"
    instance_type    = "t3.nano"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "web"
  }
}
