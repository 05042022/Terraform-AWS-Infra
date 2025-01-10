resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/8"

  tags = {
    Name = "my-vpc"
    purpose = "to learn the vpc concept"
  }
}


resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.id
  cidr_block = "10.0.0.1/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "public-subnet-1"
    vpc = aws_vpc.vpc.id
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.id
  cidr_block = "10.0.0.3/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "public-subnet-2"
    vpc = aws_vpc.vpc.id
  }
}

## private subnets

resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.id
  cidr_block = "10.0.0.2/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "private-subnet-1"
    vpc = aws_vpc.vpc.id
  }
}


resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.id
  cidr_block = "10.0.0.4/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "private-subnet-2"
    vpc = aws_vpc.vpc.id
  }
}