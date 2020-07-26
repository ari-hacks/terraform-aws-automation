provider "aws" {
  region  = var.region
}

terraform {
  required_version = ">= 0.12"
}

resource "aws_instance" "ec2_example" {
  ami           = var.ami
  instance_type = "t2.micro"
}
