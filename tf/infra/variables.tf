variable "aws_region" {
  default     = "eu-west-2"
  description = "AWS Region to deploy the application"
  type        = string
}

variable "project" {
  default = "clover"
  type    = string
}

variable "app_name" {
  default = "clover-infra"
  type    = string
}

variable "app_environment" {
  default = "production"
  type    = string
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  default     = 2
  description = "Number of availability zones"
}
