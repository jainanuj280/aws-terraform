resource "aws_instance" "test" {
  ami           = "ami-0bcf5425cdc1d8a85"
  instance_type = "t3.micro"
  subnet_id = var.subnet_id

  tags = {
    Name = "test-server"
  }
}