variable "aws_region" {
  default = "eu-west-2"
  type    = string
}

variable "app_name" {
  default = "test-app"
  type    = string
}

variable "repo_name" {
  default = "test-app"
  type    = string
}


variable "artifacts_bucket" {
  default = "im-mk-app-artifacts"
  type    = string
}

variable "code_branch" {
  default = "main"
  type    = string
}
