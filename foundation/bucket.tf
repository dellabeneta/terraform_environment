resource "aws_s3_bucket" "s3_bucket_dev" {
  bucket = "dellabeneta-s3-bucket-dev"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "s3_bucket_dev_acl" {
  bucket = aws_s3_bucket.s3_bucket_dev.id
  acl    = "private"
}

resource "aws_s3_bucket" "s3_bucket_prod" {
  bucket = "dellabeneta-s3-bucket-prod"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "s3_bucket_prod_acl" {
  bucket = aws_s3_bucket.s3_bucket_prod.id
  acl    = "private"
}