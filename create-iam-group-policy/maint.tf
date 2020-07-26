provider "aws" {
  region  = var.region
}

resource "aws_iam_group" "admin_example" {
  name = "admin_example"
}

resource "aws_iam_policy_attachment" "admin-attachement" {
  name       = "admin-attachement"
  groups     = [aws_iam_group.admin_example.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}