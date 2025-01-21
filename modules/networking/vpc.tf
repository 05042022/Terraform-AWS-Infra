resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name    = var.vpc_name
    purpose = var.vpc_purpose
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "public-subnet-1"
    vpc  = aws_vpc.vpc.id
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "public-subnet-2"
    vpc  = aws_vpc.vpc.id
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "private-subnet-1"
    vpc  = aws_vpc.vpc.id
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "private-subnet-2"
    vpc  = aws_vpc.vpc.id
  }
}
