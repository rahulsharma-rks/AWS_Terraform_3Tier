resource "aws_nat_gateway" "rahulk-ng" {
  allocation_id     = aws_eip.rahulk-elasticip.id
  subnet_id         = aws_subnet.rahulk-vpc-public-1.id

  tags = {
    Name = "rahulk-ng"
  }

}