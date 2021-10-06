provider "aws" {
  region = "ap-southeast-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}
resource "aws_instance" "web" {
  ami           = "ami-055147723b7bca09a"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
