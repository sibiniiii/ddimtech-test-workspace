resource "aws_vpc" "main_vpc" {
  cidr_block           = "172.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "sb-test-vpc"
  }
}


resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "172.0.0.0/24"
  availability_zone       = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "sb-public1-subnet"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "172.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "sb-public2-subnet"
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "172.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "sb-private1-subnet"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "172.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "sb-private2-subnet"
  }
}


