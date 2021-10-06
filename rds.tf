resource "aws_db_instance" "rahulk-rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "qazwsxedc"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  availability_zone    =  var.availability-zone[0]
  db_subnet_group_name =  aws_db_subnet_group.rahulk-sg.id
  vpc_security_group_ids = [aws_security_group.rahulk-rds-sg.id]


}


resource "aws_db_subnet_group" "rahulk-sg" {
  name       = "rahulk-sg"
  subnet_ids = [aws_subnet.rahulk-vpc-private-1.id, aws_subnet.rahulk-vpc-private-2.id]

  tags = {
    Name = "rahulk-db-sg"
  }
}


