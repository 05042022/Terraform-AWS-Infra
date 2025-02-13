resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name    = var.internet_gateway_name
    purpose = var.internet_gateway_purpose
  }
}


resource "aws_eip" "ip-1" {
  tags = {
    Name = var.eip_1_name
  }
}

resource "aws_eip" "ip-2" {
  tags = {
    Name = var.eip_2_name
  }
}

resource "aws_nat_gateway" "natgateway-1" {
  allocation_id = aws_eip.ip-1.id
  subnet_id     = var.nat_gateway_1_subnet

  tags = {
    Name = var.nat_gateway_1_name
  }

  depends_on = [aws_internet_gateway.ig]
}

resource "aws_nat_gateway" "natgateway-2" {
  allocation_id = aws_eip.ip-2.id
  subnet_id     = var.nat_gateway_2_subnet

  tags = {
    Name = var.nat_gateway_2_name
  }

  depends_on = [aws_internet_gateway.ig]
}
