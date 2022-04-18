# provider.tf

variable "workspace_accounts" {
  type = map(string)
  default = {
    "sandbox" = "rld244-sandbox"
    "dev"     = "default"
    "prod"    = "default"
  }
}

provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = var.workspace_accounts[terraform.workspace]
  region                  = "us-east-1"

  default_tags {
    tags = {
      Application          = "CULAR"
      "Cost Center"        = "L854711-VM001"
      Environment          = "Sandbox"
      Name                 = "cular-emr"
      "Technical Contact"  = "sk274"
      "Functional Contact" = "map6"
    }
  }
}
