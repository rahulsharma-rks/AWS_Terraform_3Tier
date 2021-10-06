resource "aws_security_group" "rahulk-pub-sg" {
  name   = "rahulk-pub-sg"
  vpc_id = aws_vpc.rahulk-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
     }


}
resource "aws_security_group" "rahulk-rds-sg" {
  name   = "rahulk-rds-sg"
  vpc_id = aws_vpc.rahulk-vpc.id

ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.rahulk-pub-sg.id]
  }



  egress {
    from_port        = 0
    to_port          = 65535
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

}
}
