provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "money-onTime-V1" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
