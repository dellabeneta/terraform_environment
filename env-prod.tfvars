aws_environment = "producao"

aws_profile = "michel.dellabeneta"

aws_region = "us-east-1"

aws_bucket_name = "dellabeneta-s3-bucket-prod"

aws_key_name = "dellabeneta-prod"

instance_ami = "ami-089a545a9ed9893b6"

instance_type = "t2.micro"

vpc_cidr = "10.0.0.0/16"

subnet_pub_cidr = "10.0.1.0/24"

subnet_pvt_cidr = "10.0.2.0/24"

instance_tags = {
  Name = "webserver-prod"
}