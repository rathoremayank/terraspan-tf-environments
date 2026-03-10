terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraspan-terraform-state"
    key            = "terraspan/int/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    # S3 Native State Locking enabled (requires Terraform 1.11+)
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}
