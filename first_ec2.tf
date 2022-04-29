variable "access_key" {}
variable "secret_key" {}
resource "aws_instance" "instance1" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  tags = {
    Name = "instance3"
  }
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.instance1.public_ip
}
