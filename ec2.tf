resource "aws_instance" "rahulk-ec2" {
  ami                    = "ami-0b9064170e32bde34"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.rahulkeypair.key_name
  subnet_id              = aws_subnet.rahulk-vpc-public-1.id
  vpc_security_group_ids = [aws_security_group.rahulk-pub-sg.id]
  tags = {
    Name = "rahulk-ec2"
  }
}

output "ip" {
  value = aws_instance.rahulk-ec2.public_ip
}

