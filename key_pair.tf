resource "aws_key_pair" "aws_key_pair" {
  public_key = file("~/.ssh/id_rsa.pub")
  key_name   = var.aws_key_name
}
