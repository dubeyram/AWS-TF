variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-052064a798f08f0d3"
}