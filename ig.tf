resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc

  tags = {
    Name = "internet_gateway"
    purpose = "to get internet connectivity to public subnet"
  }
}


resource "aws_eip" "ip-1" {
  
}

resource "aws_eip" "IP-2" {
}


resource "aws_nat_gateway" "natgateway-1" {
  allocation_id = aws_eip.ip-1.id
  subnet_id     = aws_subnet.public-subnet-1

  tags = {
    Name = "nat-gateway-1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.ig]
}


resource "aws_nat_gateway" "natgateway-2" {
  allocation_id = aws_eip.ip-2.id
  subnet_id     = aws_subnet.public-subnet-2

  tags = {
    Name = "nat-gateway-2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.ig]
}

