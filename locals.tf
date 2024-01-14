#local variables

#locals {
#  subnet_ids = {
#    db = tolist([module.vpc["main"].private_subnets["db_private_subnet_1"].id, module.vpc["main"].private_subnets["db_private_subnet_2"].id])
#    app =  tolist([module.vpc["main"].private_subnets["app_private_subnet_1"].id, module.vpc["main"].private_subnets["app_private_subnet_2"].id])
#    web = tolist([module.vpc["main"].private_subnets["web_private_subnet_1"].id, module.vpc["main"].private_subnets["web_private_subnet_2"].id])
#    public = tolist([module.vpc["main"].public_subnets["public_subnet_1"].id, module.vpc["main"].public_subnets["public_subnet_2"].id])
#
#  }
#  cidr_blocks = {
#    db = tolist([module.vpc["main"].private_subnets["db_private_subnet_1"].cidr_block, module.vpc["main"].private_subnets["db_private_subnet_2"].cidr_block])
#    app =  tolist([module.vpc["main"].private_subnets["app_private_subnet_1"].cidr_block, module.vpc["main"].private_subnets["app_private_subnet_2"].cidr_block])
#    web = tolist([module.vpc["main"].private_subnets["web_private_subnet_1"].cidr_block, module.vpc["main"].private_subnets["web_private_subnet_2"].cidr_block])
#    public = tolist([module.vpc["main"].public_subnets["public_subnet_1"].cidr_block, module.vpc["main"].public_subnets["public_subnet_2"].cidr_block])
#
#  }
#  db_subnet_ids = tolist([module.vpc["main"].private_subnets["db_private_subnet_1"].id, module.vpc["main"].private_subnets["db_private_subnet_2"].id])
#  app_subnet_ids =  tolist([module.vpc["main"].private_subnets["app_private_subnet_1"].id, module.vpc["main"].private_subnets["app_private_subnet_2"].id])
#  web_subnet_ids = tolist([module.vpc["main"].private_subnets["web_private_subnet_1"].id, module.vpc["main"].private_subnets["web_private_subnet_2"].id])
#  public_subnet_ids = tolist([module.vpc["main"].public_subnets["public_subnet_1"].id, module.vpc["main"].public_subnets["public_subnet_2"].id])
#
#}
