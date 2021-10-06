resource "aws_route_table" "rahulk-public-rt" {
  vpc_id = aws_vpc.rahulk-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rahulk-igw.id
  }

  tags = {
    Name = "rahulk-public-rt"
  }
}


resource "aws_route_table" "rahulk-private-rt" {
  vpc_id = aws_vpc.rahulk-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.rahulk-ng.id
  }

  tags = {
    Name = "rahulk-private-rt"
  }
}
