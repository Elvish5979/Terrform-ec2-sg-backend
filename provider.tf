terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.aws_region
}

provider "tls" {}