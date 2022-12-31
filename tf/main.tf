terraform {
  required_version = ">= 0.12"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Purpose = "Internal"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "s3_version" {
  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
