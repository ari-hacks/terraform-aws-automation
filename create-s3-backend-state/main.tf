terraform {
  backend "s3" {
    bucket = "bucket-example-tmed232323"
    key    = "terraform-aws-automation/create-s3-backend-state/terraform.tfstate"
  }
}