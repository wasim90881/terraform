resource "aws_instance" "MyFirstInstnace" {
  count         = 1
  ami           = "ami-0ef50c2b2eb330511"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}
