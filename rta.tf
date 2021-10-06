resource "aws_route_table_association" "private-rta-private-1" {
  subnet_id      = aws_subnet.rahulk-vpc-private-1.id
  route_table_id = aws_route_table.rahulk-private-rt.id
}



resource "aws_route_table_association" "private-rta-private-2" {
  subnet_id      = aws_subnet.rahulk-vpc-private-2.id
  route_table_id = aws_route_table.rahulk-private-rt.id
}


resource "aws_route_table_association" "public-rta-public-1" {
  subnet_id      = aws_subnet.rahulk-vpc-public-1.id
  route_table_id = aws_route_table.rahulk-public-rt.id
}




resource "aws_route_table_association" "public-rta-public-2" {
  subnet_id      = aws_subnet.rahulk-vpc-public-2.id
  route_table_id = aws_route_table.rahulk-public-rt.id
}
