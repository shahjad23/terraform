resource "aws_instance" "first_instance" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  tags = {
   name = "first"
   value = "instance"
  }
}
