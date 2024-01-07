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
    instance_type = "t3.micro"
    max_size = 4
    min_size = 1
    desired_capacity = 1
    subnets = "app"
    port_number = 8080
    allow_app = "app"
  }
  cart = {
    name             = "cart"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
    port_number = 8080
    allow_app = "app"
  }
  shipping = {
    name             = "shipping"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
    port_number = 8080
    allow_app = "app"
  }
  user = {
    name             = "user"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
    port_number = 8080
    allow_app = "app"
  }
  payment = {
    name             = "payment"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "app"
    port_number = 8080
    allow_app = "app"
  }
  frontend = {
    name             = "frontend"
    instance_type    = "t3.micro"
    max_size         = 4
    min_size         = 1
    desired_capacity = 1
    subnets          = "web"
    port_number = 80
    allow_app = "public"
  }
}

vpc = {
  main = {
    public_subnets = {
      subnet-1 = {
        name       = "public_subnet_1"
        cidr_block = "10.0.1.0/24"
        az         = "us-east-1a"
      }
      subnet-2 = {
        name       = "public_subnet_2"
        cidr_block = "10.0.2.0/24"
        az         = "us-east-1b"
      }
    }
    private_subnets = {
      subnet-3 = {
        name       = "web_private_subnet_1"
        cidr_block = "10.0.3.0/24"
        az         = "us-east-1a"
      }
      subnet-4 = {
        name       = "web_private_subnet_2"
        cidr_block = "10.0.4.0/24"
        az         = "us-east-1b"
      }
      subnet-5 = {
        name       = "app_private_subnet_1"
        cidr_block = "10.0.5.0/24"
        az         = "us-east-1a"
      }
      subnet-6 = {
        name       = "app_private_subnet_2"
        cidr_block = "10.0.6.0/24"
        az         = "us-east-1b"
      }
      subnet-7 = {
        name       = "db_private_subnet_1"
        cidr_block = "10.0.7.0/24"
        az         = "us-east-1a"
      }
      subnet-8 = {
        name       = "db_private_subnet_2"
        cidr_block = "10.0.8.0/24"
        az         = "us-east-1b"
      }
    }
  }
}
