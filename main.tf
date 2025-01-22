module "networking" {
  source = "./modules/networking"

  # VPC variables
  vpc_cidr_block  = "10.0.0.0/16"
  vpc_name        = "my-vpc"
  vpc_purpose     = "to learn the vpc concept"

  # Public Subnet variables
  public_subnet_1_cidr               = "10.0.0.0/24"
  public_subnet_1_availability_zone  = "eu-west-3a"
  public_subnet_2_cidr               = "10.0.1.0/24"
  public_subnet_2_availability_zone  = "eu-west-3b"

  # Private Subnet variables
  private_subnet_1_cidr              = "10.0.2.0/24"
  private_subnet_1_availability_zone = "eu-west-3a"
  private_subnet_2_cidr              = "10.0.3.0/24"
  private_subnet_2_availability_zone = "eu-west-3b"

  # Internet Gateway variables
  internet_gateway_name    = "internet_gateway"
  internet_gateway_purpose = "to get internet connectivity to public subnet"

  # Elastic IP variables for NAT Gateway
  eip_1_name               = "eip-1"
  eip_2_name               = "eip-2"

  # NAT Gateway variables
  nat_gateway_1_name       = "nat-gateway-1"
  nat_gateway_1_subnet     = "10.0.0.0/24"  # Subnet ID for NAT 1
  nat_gateway_2_name       = "nat-gateway-2"
  nat_gateway_2_subnet     = "10.0.1.0/24"  # Subnet ID for NAT 2
}
