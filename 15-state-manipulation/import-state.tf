/*
1. Import via CLI
2. Import via Import block
*/

/*resource "aws_s3_bucket" "remote_state" {
  bucket = "udemy-s3-backend"

  tags = {
    ManagedBy = "Terraform"
    Lifecycle = "Critical"
  }

  lifecycle {
    prevent_destroy = true

  }
}*/

/*import {
  to = aws_s3_bucket_public_access_block.remote_state
  id = aws_s3_bucket.remote_state.bucket
}*/

/*resource "aws_s3_bucket_public_access_block" "remote_state" {
  bucket = aws_s3_bucket.remote_state.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

removed {
  from = aws_s3_bucket.remote_state
  
  lifecycle {
    destroy = false
  }
}*/