terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider aws {
    region = "eu-west-2"
}

resource aws_iam_role iam_for_lambda {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource aws_lambda_function lambda1 {
  filename      = "../bin/lambda1.zip"
  function_name = "lambda1"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda1"
  runtime = "go1.x"
}

resource aws_lambda_function lambda2 {
  filename      = "../bin/lambda2.zip"
  function_name = "lambda2"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda2"
  runtime = "go1.x"
}