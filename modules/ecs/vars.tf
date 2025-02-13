variable "cluster_name" {
  description = "Name of the ECS cluster."
  type        = string
}

variable "task_family" {
  description = "Family name for the ECS task definition."
  type        = string
}

variable "container_definitions" {
  description = "JSON definition of the container to run."
  type        = string
}

# variable "task_role_arn" {
#   description = "ARN of the IAM role that tasks can assume."
#   type        = string
# }

variable "cpu" {
  description = "CPU units for the task."
  type        = string
}

variable "memory" {
  description = "Memory in MiB for the task."
  type        = string
}

variable "service_name" {
  description = "Name of the ECS service."
  type        = string
}

variable "desired_count" {
  description = "Number of desired tasks."
  type        = number
}

variable "subnets" {
  description = "List of subnet IDs for the ECS service."
  type        = list(string)
}

# variable "security_groups" {
#   description = "List of security group IDs for the ECS service."
#   type        = list(string)
# }

variable "assign_public_ip" {
  description = "Whether to assign a public IP to the ECS service."
  type        = bool
  default     = false
}

# variable "execution_role_arn" {
#   description = "ARN of the IAM role that grants ECS permissions to execute tasks."
#   type        = string
# }

variable "vpc_id" {
  description = "VPC ID for ECS cluster networking"
  type        = string
}

