variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}
resource "aws_instance" "instance1" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "instance3"
  }
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.instance1.public_ip
}
