terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}


provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "MyFirstInstance" {
    ami           = "ami-04c08fd8aa14af291"
    instance_type = "t3.nano"
    
    tags = {
        Name = "MyFirstInstance"
    }
  
}