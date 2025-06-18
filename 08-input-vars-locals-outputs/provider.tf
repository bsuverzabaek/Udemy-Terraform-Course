terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

# AMI ID us-east-1: ami-0a7d80731ae1b2435

provider "aws" {
  region = "us-east-1"
}