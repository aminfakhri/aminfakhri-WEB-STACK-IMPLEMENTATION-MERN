
resource "aws_instance" "proj3" {
  ami           = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.nano"
  key_name = "pro2"

  tags = {
    Name = "WEB STACK DEVELOPMENT MERN"
  }
}
