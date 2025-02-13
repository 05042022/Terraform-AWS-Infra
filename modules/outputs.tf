# Output VPC ID
output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.vpc.id
}

# Output Public Subnet IDs
output "public_subnet_ids" {
  description = "The IDs of the public subnets."
  value       = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]
}

# Output Private Subnet IDs
output "private_subnet_ids" {
  description = "The IDs of the private subnets."
  value       = [aws_subnet.private-subnet-1.id, aws_subnet.private-subnet-2.id]
}

# Output Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.ig.id
}

# Output Elastic IPs for NAT Gateways
output "nat_gateway_eips" {
  description = "The allocation IDs of the Elastic IPs for NAT Gateways."
  value       = [aws_eip.ip-1.id, aws_eip.ip-2.id]
}

# Output NAT Gateway IDs
output "nat_gateway_ids" {
  description = "The IDs of the NAT Gateways."
  value       = [aws_nat_gateway.natgateway-1.id, aws_nat_gateway.natgateway-2.id]
}

# Output Route Table IDs
output "route_table_ids" {
  description = "The IDs of the route tables."
  value       = [
    aws_route_table.public-route-table.id,
    aws_route_table.private-route-table-1.id,
    aws_route_table.private-route-table-2.id
  ]
}
