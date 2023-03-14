terraform {
  required_version = ">=1.1.0"
  required_providers {
    aws = {
      version = ">= 3.50.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-3"

  default_tags {
    tags = {
      owner      = "joao"
      managed-by = "terraform"
    }
  }
}
