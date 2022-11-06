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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c09c7eb16d3e8e70"
  instance_type = "t2.micro"
  key_name = "chave"

  tags = {
    Name = "ubuntu-server"
  }
}
