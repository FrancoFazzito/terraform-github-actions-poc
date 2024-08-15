provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-example-bucket"
  acl    = "private"
}

terraform {
  backend "remote" {
    organization = "terraform-github-actions-organization"

    workspaces {
      name = "terraform-github-actions"
    }
  }
}
