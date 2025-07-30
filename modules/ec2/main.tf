variable "subnet_id" {}
variable "security_group" {}
variable "user_data" {}

resource "aws_instance" "nginx" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group]
  user_data              = var.user_data
  key_name               = "first-Key"

  tags = {
    Name = "nginx-instance"
  }
}


