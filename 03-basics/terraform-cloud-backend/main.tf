terraform {
  backend "remote" {
    organization = "rtech-www-prod"

    workspaces {
      name = "devops-directive-terraform-course-randall-codes4"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
