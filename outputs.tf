output "vpc_details" {
  value = module.vpc["main"]["private_subnets"]
}
