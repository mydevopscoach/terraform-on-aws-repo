provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = "my-s3bucket-"
  acl = "private"
   versioning = {
    enabled = true
  }
  tags = {
    Name = "My S3 bucket"
    Environment = "POC"
   }
}

# Create Output variable to print what is being created
output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket.id
}
