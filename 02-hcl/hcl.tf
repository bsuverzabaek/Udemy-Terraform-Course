terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }
  }
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-sample-bucket"
}

data "aws_s3_bucket" "my_external_bucket" {
  bucket = "not-managed-by-us"
}

variable "my_variable" {
  type = string
  description = "My variable used to set bucket name"
  default = "my_default_bucket_name"
}

output "bucket_id" {
  value = aws_s3_bucket.my_bucket.id
}

locals {
  local_example = "This is a local variable"
}

module "my_module" {
  source = "./module-example"
}