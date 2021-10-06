############################################################AZ-2a######################################################################
resource "aws_subnet" "rahulk-vpc-public-1" {
  vpc_id                  = aws_vpc.rahulk-vpc.id
  cidr_block              = var.subnetCidr[0]
  availability_zone       = var.availability-zone[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "rahulk-vpc-public-1"
  }
}

resource "aws_subnet" "rahulk-vpc-private-1" {
  vpc_id            = aws_vpc.rahulk-vpc.id
  cidr_block        = var.subnetCidr[1]
  availability_zone = var.availability-zone[0]
  tags = {
    Name = "rahulk-vpc-private-1"
  }
}
####################################################################AZ-2b###############################################################
resource "aws_subnet" "rahulk-vpc-public-2" {
  vpc_id            = aws_vpc.rahulk-vpc.id
  cidr_block        = var.subnetCidr[2]
  availability_zone = var.availability-zone[1]
  map_public_ip_on_launch = true
  tags = {
    Name = "rahulk-vpc-public-2"
  }
}

resource "aws_subnet" "rahulk-vpc-private-2" {
  vpc_id            = aws_vpc.rahulk-vpc.id
  cidr_block        = var.subnetCidr[3]
  availability_zone = var.availability-zone[1]
  tags = {
    Name = "rahulk-vpc-private-2"
  }
}
