variable "aws_region" {
  default     = "eu-west-2"
  description = "AWS Region to deploy example API Gateway REST API"
  type        = string
}

variable "bucket_name" {
  default     = "mk-internal-tfstate"
  description = "Name of s3 bucket"
  type        = string
}