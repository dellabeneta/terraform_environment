terraform {
  backend "s3" {
    bucket = "dellabeneta-s3-bucket-dev"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}