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
terraform {
  backend "s3" {
    bucket = "state-file-locking"
    key    = "module"
    region = "us-east-1"
    dynamodb_table = "statefile-locking"
  }
}
