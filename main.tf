
resource "aws_instance" "proj3" {
  ami           = "ami-0735c191cf914754d"
  instance_type = "t2.nano"
  key_name = "pro2"

  tags = {
    Name = "WEB STACK DEVELOPMENT MERN"
  }
  
  user_data = file("script.sh")

}

