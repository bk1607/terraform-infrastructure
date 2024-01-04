data "aws_subnets" "vpc_subnets" {

  filter {
    name   = "tag:Name"
    values = ["db_private_subnet_1","db_private_subnet_2"]
  }
}
# to get web subnet ids
data "aws_subnets" "web_subnets" {
  filter {
    name   = "tag:Name"
    values = ["web_private_subnet_1","web_private_subnet_2"]
  }
}

data "aws_subnets" "app_subnets" {
  filter {
    name   = "tag:Name"
    values = ["app_private_subnet_1","app_private_subnet_2"]
  }
}
data "aws_subnets" "public_subnets" {
  filter {
    name   = "tag:Name"
    values = ["public_subnet_1","public_subnet_2"]
  }
}

