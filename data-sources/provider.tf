terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0" # this is aws_provider version, not terraform version
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}