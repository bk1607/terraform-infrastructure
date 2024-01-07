#local variables
#locals {
#  subnet_ids = {
#    db =  data.aws_subnets.vpc_subnets.ids
#    app = data.aws_subnets.app_subnets.ids
#    web = data.aws_subnets.web_subnets.ids
#    public = data.aws_subnets.public_subnets.ids
#  }
#
#  db_subnet_ids =  data.aws_subnets.vpc_subnets.ids
#  app_subnet_ids = data.aws_subnets.app_subnets.ids
#  web_subnet_ids = data.aws_subnets.web_subnets.ids
#}
#
#locals {
#  subnet_info = { for s in data.aws_subnet.example : s.tags["Name"] => s.cidr_block}
#}
locals {
  subnet_ids = {
    db = tolist([module.vpc["main"].private_subnets["db_private_subnet_1"].id, module.vpc["main"].private_subnets["db_private_subnet_2"].id])
  }
}