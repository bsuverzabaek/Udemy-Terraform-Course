terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "us-west"
}

resource "aws_s3_bucket" "us_east_1" {
  bucket = "some-random-bucket-name-fgbfgbgf"
}

resource "aws_s3_bucket" "us_west_1" {
  bucket   = "some-random-bucket-name-njnjklnj"
  provider = aws.us-west
}