variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "terraform_api_token" {
  type      = string
  sensitive = true
}