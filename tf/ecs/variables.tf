variable "aws_region" {
  default     = "eu-west-2"
  description = "AWS Region to deploy the application"
  type        = string
}

variable "app_name" {
  default = "inventory-service"
  type    = string
}

variable "project" {
  default = "clover"
  type    = string
}

variable "app_environment" {
  default = "production"
  type    = string
}

variable "container_count" {
  default     = 1
  description = "Number of containers"
}

variable "health_path" {
  default = "health"
}

variable "app_port" {
  description = "alb port"
  default     = 80
}

variable "container_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8020
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "latest"
}
