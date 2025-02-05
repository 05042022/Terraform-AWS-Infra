resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }

}

resource "aws_route_table_association" "public-1" {
    subnet_id = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.public-route-table.id
  
}

resource "aws_route_table_association" "public-2" {
    subnet_id = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.public-route-table.id
  
}

resource "aws_route_table" "private-route-table-1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway-1.id
  }

}

resource "aws_route_table" "private-route-table-2" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway-2.id
  }

}

resource "aws_route_table_association" "private-1" {
    subnet_id = aws_subnet.private-subnet-1.id
    route_table_id = aws_route_table.private-route-table-1.id
  
}


resource "aws_route_table_association" "private-2" {
    subnet_id = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.private-route-table-2.id
  
}