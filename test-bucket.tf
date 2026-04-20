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

resource "aws_s3_object" "proof_md" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Armageddon-Lab3-4.md"
  source = "${path.module}/Proof/Armageddon-Lab3-4.md"
  etag   = filemd5("${path.module}/Proof/Armageddon-Lab3-4.md")

  content_type = "text/markdown"
}

resource "aws_s3_object" "console_output_1" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/console-output.png"
  source = "${path.module}/Proof/console-output.png"
  etag   = filemd5("${path.module}/Proof/console-output.png")

  content_type = "image/png"
}

resource "aws_s3_object" "console_output_2" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/console-output2.png"
  source = "${path.module}/Proof/console-output2.png"
  etag   = filemd5("${path.module}/Proof/console-output2.png")

  content_type = "image/png"
}

resource "aws_s3_object" "console_output_3" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/console-output3.png"
  source = "${path.module}/Proof/console-output3.png"
  etag   = filemd5("${path.module}/Proof/console-output3.png")

  content_type = "image/png"
}

resource "aws_s3_object" "jenkins_stages" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Jenkins-Stages.png"
  source = "${path.module}/Proof/Jenkins-Stages.png"
  etag   = filemd5("${path.module}/Proof/Jenkins-Stages.png")

  content_type = "image/png"
}

resource "aws_s3_object" "jenkins_trigger" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Jenkins-Stages-trigger.png"
  source = "${path.module}/Proof/Jenkins-Stages-trigger.png"
  etag   = filemd5("${path.module}/Proof/Jenkins-Stages-trigger.png")

  content_type = "image/png"
}

resource "aws_s3_object" "jenkins_webhook" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Jenkins-Stages-webhook.png"
  source = "${path.module}/Proof/Jenkins-Stages-webhook.png"
  etag   = filemd5("${path.module}/Proof/Jenkins-Stages-webhook.png")

  content_type = "image/png"
}

resource "aws_s3_object" "webhook1" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Webhook1.png"
  source = "${path.module}/Proof/Webhook1.png"
  etag   = filemd5("${path.module}/Proof/Webhook1.png")

  content_type = "image/png"
}

resource "aws_s3_object" "webhook2" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Webhook2.png"
  source = "${path.module}/Proof/Webhook2.png"
  etag   = filemd5("${path.module}/Proof/Webhook2.png")

  content_type = "image/png"
}

resource "aws_s3_object" "webhook3" {
  bucket = aws_s3_bucket.frontend.id
  key    = "Proof/Webhook3.png"
  source = "${path.module}/Proof/Webhook3.png"
  etag   = filemd5("${path.module}/Proof/Webhook3.png")

  content_type = "image/png"
}