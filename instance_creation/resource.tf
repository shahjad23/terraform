resource "aws_instance" "first_instance" {
  ami = var.AMIS[var.region]
  instance_type = "t2.micro"
  key_name = aws_key_pair.mykey.key_name
  tags = {
   name = "first_instance"
  }
  user_data = file("script.sh")
}

resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  public_key = file(var.key)
}


output "instance_ip"{
  value = aws_instance.first_instance.public_ip
}
