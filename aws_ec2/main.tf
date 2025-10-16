terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

# -------------------------------
# Provider Configuration
# -------------------------------
provider "aws" {
  region = var.region
}

# -------------------------------
# EC2 Instance
# -------------------------------
resource "aws_instance" "MyFirstInstance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "MyFirstInstance"
  }
}

# -------------------------------
# S3 Bucket
# -------------------------------
resource "aws_s3_bucket" "MyFirstBucket" {
  bucket = "my-first-unique-bucket-1234567890" # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyFirstBucket"
    Environment = "Dev"
  }
}