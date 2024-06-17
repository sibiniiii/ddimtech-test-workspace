variable "access_key" {
  type    = string
}

variable "secret_key" {
  type    = string
}

################################################################################
# VPC
################################################################################
variable "vpc_cidr_block" {
  type    = string
  default = "10.10.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = string
  default = "true"
}

variable "enable_dns_support" {
  type    = string
  default = "true"
}

variable "vpc_tag" {
  type    = string
  default = "sb_main_vpc"
}

variable "tags" {
  type    = string
  default = "sb_by_terraform"
}
