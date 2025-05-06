resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  enable_dns_hostnames = var.enable_dns_hostnames
  tags= merger (var.commong_tags , var.vpc_tags)
}