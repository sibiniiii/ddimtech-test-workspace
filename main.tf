#resource "aws_vpc" "main_vpc" {
#  cidr_block           = "172.0.0.0/16"
#  enable_dns_hostnames = true
#  enable_dns_support   = true
#  tags = {
#    Name = "sb-test-vpc"
#  }
#}

module "vpc" {
  source  = "tfe.ddimtech.click/ddimtech/vpc/aws"
  version = "2.0.0"

  vpc_cidr_block       = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  vpc_tag              = var.vpc_tag
  tags                 = var.tags

}



