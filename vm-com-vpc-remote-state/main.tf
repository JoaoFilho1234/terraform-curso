terraform {
  required_version = ">=1.1.0"
  required_providers {
    aws = {
      version = ">= 3.50.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "my-bucket-curso-pb-uol"
    key    = "aws-vm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "joao"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "my-bucket-curso-pb-uol"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
