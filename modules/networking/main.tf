# VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.my_vpc_cidr_block

  tags = {
    Name = var.vpc_name
    Purpose = var.vpc_purpose
  }
}

# Public Subnets
resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-subnet1_cidr
  availability_zone       = var.public-subnet1_availability_zone
  map_public_ip_on_launch = true  # Ensures instances get public IPs

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public-subnet2_cidr
  availability_zone       = var.public-subnet2_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

# Private Subnets
resource "aws_subnet" "private-subnet1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private-subnet1_cidr
  availability_zone = var.private-subnet1_availability_zone

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private-subnet2_cidr
  availability_zone = var.private-subnet2_availability_zone

  tags = {
    Name = "private-subnet-2"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}
