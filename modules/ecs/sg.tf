resource "aws_security_group" "ecs_sg" {
  name        = "ecs-security-group"
  description = "Allow ECS tasks to communicate with the internet"
  vpc_id      = var.vpc_id  # Ensure you reference the VPC created by your networking module

  # Allow inbound traffic on port 80 for HTTP access
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP traffic from anywhere
  }

  # Allow inbound traffic on port 443 for HTTPS access
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTPS traffic from anywhere
  }

  # Allow all outbound traffic (ECS tasks need this to communicate with AWS services)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ecs-security-group"
  }
}
