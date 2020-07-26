provider "aws" {
  region  = var.region
}

resource "aws_iam_user" "admin_example_1" {
  name = "admin_example_1"
}

resource "aws_iam_user" "admin_example_2" {
  name = "admin_example_2"
}

resource "aws_iam_group_membership" "admin-user-group-example" {
  name = "admin-user-group-example"
  users = [
    aws_iam_user.admin_example_1.name,
    aws_iam_user.admin_example_2.name,
  ]
  group = "administrators"
}
