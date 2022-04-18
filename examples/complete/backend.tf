# backend.tf
terraform {
  backend "s3" {
    profile        = "default"
    bucket         = "cul-admin-terraform-state"
    key            = "cular-emr/terraform.state"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "cul-admin-terraform-state-lock"
  }
}
