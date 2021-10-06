resource "aws_internet_gateway" "rahulk-igw" {
  vpc_id = aws_vpc.rahulk-vpc.id

  tags = {
    Name = "rahulk-igw"
  }
}
