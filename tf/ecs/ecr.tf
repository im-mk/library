resource "aws_ecr_repository" "repo" {
  name                 = "${var.app_name}-ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name        = "${var.app_name}-ecr"
    Application = var.app_name
    Project     = var.project
    Environment = var.app_environment
  }
}
