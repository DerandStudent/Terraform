provider "aws" {
  region = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "terraform_1" {
  ami = var.ami-1
  instance_type = var.type

  tags = {
    Name = "terraform_1"
  }
}

variable "ami-1" {
  description = "machine image"
  default = "ami-096cb92bb3580c759"
}

variable "type" {
  default = "t2.micro"
}