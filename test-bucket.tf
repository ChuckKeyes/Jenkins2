terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use latest version if possible
    }
  }

  backend "s3" {
    bucket  = "ck-terraform-state-2026-01" # Name of the S3 bucket
    key     = "jenkins2/terraform.tfstate" # The name of the state file in the bucket
    region  = "us-east-2"                  # Use a variable for the region
    encrypt = true                         # Enable server-side encryption (optional but recommended)
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "jenkins-bucket-"
  force_destroy = true


  tags = {
    Name = "Jenkins Bucket"
  }
}