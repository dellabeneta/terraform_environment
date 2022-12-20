resource "aws_instance" "instance" {
  ami             = var.instance_ami
  instance_type   = var.instance_type
  key_name        = var.aws_key_name
  subnet_id       = aws_subnet.subnet_public.id
  security_groups = [aws_security_group.sg_instance.id]

  user_data = <<-EOF
      #!/bin/bash
      sudo yum update -y
      sudo yum install -y httpd
      sudo systemctl enable httpd
      sudo systemctl start httpd
      sudo chmod 777 /var/www/html/index.html
      ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
      PVTIP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
      PUBIP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
      echo "<h1>Instance ID: $ID</h1>" >> /var/www/html/index.html
      echo "<h1>Instance Local IP: $PVTIP</h1>" >> /var/www/html/index.html
      echo "<h1>Instance Public IP: $PUBIP</h1>" >> /var/www/html/index.html
      echo "<h1>Michel T. Dellabeneta</h1>" >> /var/www/html/index.html
    EOF
}