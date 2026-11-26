terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "ade-op"

    workspaces {
      name = "secrets-manager-infrastructure"
    }
  }
}

provider "aws" {
  region              = "us-east-1"
  allowed_account_ids = ["381492260180"]
}
