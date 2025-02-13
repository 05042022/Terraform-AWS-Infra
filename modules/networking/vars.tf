## ✅ AWS REGION
variable "region" {
  description = "AWS region code"
  type        = string
  default     = "eu-west-3"
}

# ✅ VPC Variables
variable "my_vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "my_vpc"
}

variable "vpc_purpose" {
  description = "Purpose of the VPC."
  type        = string
  default     = "to learn the vpc concept"
}

# Public Subnets Variables
variable "public-subnet1_cidr" {
  description = "The CIDR block for the first public subnet."
  type        = string
  default     = "10.0.0.0/24"
}
variable "public-subnet1_availability_zone" {
  description = "The availability zone for the first public subnet."
  type        = string
  default     = "eu-west-3a"
}

variable "public-subnet2_cidr" {
  description = "The CIDR block for the second public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public-subnet2_availability_zone" {
  description = "The availability zone for the second public subnet."
  type        = string
  default     = "eu-west-3b"  # ✅ FIX: Spread across different AZs for high availability
}

# ✅ Private Subnets Variables
variable "private-subnet1_cidr" {
  description = "The CIDR block for the first private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "private-subnet1_availability_zone" {
  description = "The availability zone for the first private subnet."
  type        = string
  default     = "eu-west-3a"
}

variable "private-subnet2_cidr" {
  description = "The CIDR block for the second private subnet."
  type        = string
  default     = "10.0.3.0/24"
}

variable "private-subnet2_availability_zone" {
  description = "The availability zone for the second private subnet."
  type        = string
  default     = "eu-west-3b"  # ✅ FIX: Use a different AZ for HA
}

# ✅ Internet Gateway Variables
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

# ✅ Elastic IPs for NAT Gateway
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

# ✅ NAT Gateway Variables
variable "nat_gateway_1_name" {
  description = "The name of the first NAT Gateway."
  type        = string
  default     = "nat-gateway-1"
}

variable "nat_gateway_1_subnet" {
  description = "The public subnet ID for the first NAT Gateway."
  type        = string
}

variable "nat_gateway_2_name" {
  description = "The name of the second NAT Gateway."
  type        = string
  default     = "nat-gateway-2"
}

variable "nat_gateway_2_subnet" {
  description = "The public subnet ID for the second NAT Gateway."
  type        = string
}
