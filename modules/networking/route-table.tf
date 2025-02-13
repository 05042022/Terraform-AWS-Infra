resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }

}

resource "aws_route_table_association" "public-route-table1" {
    subnet_id = aws_subnet.public-subnet1.id
    route_table_id = aws_route_table.public-route-table.id
  
}

resource "aws_route_table_association" "public-route-table2" {
    subnet_id = aws_subnet.public-subnet2.id
    route_table_id = aws_route_table.public-route-table.id
  
}

resource "aws_route_table" "private-route-table1" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway-1.id
  }

}

resource "aws_route_table" "private-route-table2" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway-2.id
  }

}

resource "aws_route_table_association" "private-route-table1" {
    subnet_id = aws_subnet.private-subnet1.id
    route_table_id = aws_route_table.private-route-table1.id
  
}


resource "aws_route_table_association" "private-route-table2" {
    subnet_id = aws_subnet.private-subnet2.id
    route_table_id = aws_route_table.private-route-table2.id
  
}