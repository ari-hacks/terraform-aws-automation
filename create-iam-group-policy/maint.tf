provider "aws" {
  region  = var.region
}

resource "aws_iam_group" "admin_example" {
  name = "administrators"
}

resource "aws_iam_policy_attachment" "admin-example" {
  name       = "admin-example"
  groups     = [aws_iam_group.admin_example.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}