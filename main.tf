module "networking" {
  source = "./modules/networking"

  # VPC variables
  #vpc_cidr_block  = "10.0.0.0/16"
  #vpc_name        = "my_vpc"
  #vpc_purpose     = "to learn the vpc concept"

  # Public Subnet variables
  public-subnet1_cidr               = "10.0.0.0/24"
  public-subnet1_availability_zone  = "eu-west-3a"
  public-subnet2_cidr               = "10.0.1.0/24"
  public-subnet2_availability_zone  = "eu-west-3b"

  # Private Subnet variables
  private-subnet1_cidr              = "10.0.2.0/24"
  private-subnet1_availability_zone = "eu-west-3a"
  private-subnet2_cidr              = "10.0.3.0/24"
  private-subnet2_availability_zone = "eu-west-3b"

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


module "ecs" {
  source = "./modules/ecs"
  cluster_name          = var.cluster_name
  task_family           = var.task_family
  container_definitions = file("container_definition.json")
#   execution_role_arn    = aws_iam_role.ecs_execution_role.arn
#   task_role_arn         = var.task_role_arn
  cpu                   = var.cpu
  memory                = var.memory
  service_name          = var.service_name
  desired_count         = var.desired_count
  vpc_id                = module.networking.vpc_id  
  subnets               = module.networking.public_subnet_ids
  assign_public_ip      = var.assign_public_ip
}
