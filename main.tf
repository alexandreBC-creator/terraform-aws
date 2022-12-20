terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "nginx" {
  ami = "ami-0b5eea76982371e91"
  key_name = "iac-practice"
  instance_type = "t2.micro"
  tags = {
    Name = "Load Balancer Nginx"
  }
}