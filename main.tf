terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.55"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ec2_tag" "example" {
  for_each = var.consul_kv
  resource_id = split("/", each.key)[2]
  key         = split("/", each.key)[3]
  value       = each.value
}
