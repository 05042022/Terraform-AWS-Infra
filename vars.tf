## variables

variable "region" {
  default = "eu-west-3"
  description = "AWS region code"
}

# VPC Variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "my-vpc"
}

variable "vpc_purpose" {
  description = "Purpose of the VPC."
  type        = string
  default     = "to learn the vpc concept"
}

# Public Subnets Variables
variable "public_subnet_1_cidr" {
  description = "The CIDR block for the first public subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "public_subnet_1_availability_zone" {
  description = "The availability zone for the first public subnet."
  type        = string
  default     = "eu-west-3a"
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for the second public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_availability_zone" {
  description = "The availability zone for the second public subnet."
  type        = string
  default     = "eu-west-3a"
}

# Private Subnets Variables
variable "private_subnet_1_cidr" {
  description = "The CIDR block for the first private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_availability_zone" {
  description = "The availability zone for the first private subnet."
  type        = string
  default     = "eu-west-3a"
}

variable "private_subnet_2_cidr" {
  description = "The CIDR block for the second private subnet."
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_availability_zone" {
  description = "The availability zone for the second private subnet."
  type        = string
  default     = "eu-west-3a"
}


# Variables for Internet Gateway
variable "internet_gateway_name" {
  description = "The name of the Internet Gateway."
  type        = string
  default     = "internet_gateway"
}

variable "internet_gateway_purpose" {
  description = "The purpose of the Internet Gateway."
  type        = string
  default     = "to get internet connectivity to public subnet"
}

# Variables for Elastic IPs
variable "eip_1_name" {
  description = "The name of the first Elastic IP."
  type        = string
  default     = "eip-1"
}

variable "eip_2_name" {
  description = "The name of the second Elastic IP."
  type        = string
  default     = "eip-2"
}

# Variables for NAT Gateways
variable "nat_gateway_1_name" {
  description = "The name of the first NAT Gateway."
  type        = string
  default     = "nat-gateway-1"
}

variable "nat_gateway_1_subnet" {
  description = "The ID of the public subnet for the first NAT Gateway."
  type        = string
  default     = ""
}

variable "nat_gateway_2_name" {
  description = "The name of the second NAT Gateway."
  type        = string
  default     = "nat-gateway-2"
}

variable "nat_gateway_2_subnet" {
  description = "The ID of the public subnet for the second NAT Gateway."
  type        = string
  default     = ""
}


variable "cluster_name" {
  default     = "my-ecs-cluster"
  description = "Name of the ECS cluster."
}

variable "task_family" {
  default     = "my-task-family"
  description = "Family name for the ECS task definition."
}

variable "container_definitions" {
  default     = <<EOF
[
  {
    "name": "my-container",
    "image": "nginx",
    "cpu": 256,
    "memory": 512,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
EOF
  description = "JSON definition of the container to run."
}

variable "execution_role_arn" {
  description = "ARN of the IAM role that grants ECS permissions to execute tasks."
  type        = string
}

variable "task_role_arn" {
  description = "ARN of the IAM role that tasks can assume."
  type        = string
}

variable "cpu" {
  default     = "256"
  description = "CPU units for the task."
}

variable "memory" {
  default     = "512"
  description = "Memory in MiB for the task."
}

variable "service_name" {
  default     = "my-ecs-service"
  description = "Name of the ECS service."
}

variable "desired_count" {
  default     = 1
  description = "Number of desired tasks."
}

variable "subnets" {
  description = "List of subnet IDs for the ECS service."
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs for the ECS service."
  type        = list(string)
}

variable "assign_public_ip" {
  default     = false
  description = "Whether to assign a public IP to the ECS service."
}

