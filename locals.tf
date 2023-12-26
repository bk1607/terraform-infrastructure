#local variables
locals {
  db_subnet_ids =  data.aws_subnets.vpc_subnets.ids
}