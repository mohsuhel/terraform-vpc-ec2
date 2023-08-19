terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuring provider
provider "aws" {
region = "us-east-2"
access_key = ""
secret_key = ""
}


resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform hands-on"
  }
}

