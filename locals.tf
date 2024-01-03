#local variables
locals {
  subnet_ids = {
    db =  data.aws_subnets.vpc_subnets.ids
    app = data.aws_subnets.app_subnets.ids
    web = data.aws_subnets.web_subnets.ids
  }
  db_subnet_ids =  data.aws_subnets.vpc_subnets.ids
  app_subnet_ids = data.aws_subnets.app_subnets.ids
  web_subnet_ids = data.aws_subnets.web_subnets.ids
}