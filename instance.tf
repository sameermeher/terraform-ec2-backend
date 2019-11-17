resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.terraform-provisioned.public_ip
}
