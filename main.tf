terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">=1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "bia-tf"
}

resource "aws_security_group" "bia_dev" {
  name        = "bia-dev-sg"
  description = "Security group for BIA development environment"
  vpc_id      = "vpc-027b833a447bad254"

  ingress {
    from_port   = 3001
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bia-dev" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    Name        = var.instance_name
    Environment = "development"
  }
  root_block_device {
    volume_size = 10
  }
  vpc_security_group_ids = [aws_security_group.bia_dev.id]
}
