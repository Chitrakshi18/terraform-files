terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "tf-instance-using-for-each"{
  for_each = var.instances
  ami = "var.instances[each.key].ami"  /* or, can fetch by each.value["ami"] */
  instance_type = "var.instances[each.key].instance_type" /* or, can fetch by each.value["instance_type"] */
  tags = {
    Name = each.key
  }
}
