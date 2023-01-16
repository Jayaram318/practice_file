resource "aws_vpc" "my_vpc" {
  cidr_block            = "192.168.0.0/16"
            tags        ={
                "Name"  ="fromtf"
            } 
}

resource "aws_subnet" "sub1" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.0.0/24"
   availability_zone    = "us-west-2a"
   tags = {
     "Name"             = "sub1"
   }
}
resource "aws_subnet" "sub2" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.1.0/24"
  availability_zone     = "us-west-2b"
  tags                  = {
    "Name"              = "sub2"
  }
}
resource "aws_subnet" "sub3" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.2.0/24"
  availability_zone     = "us-west-2c"
  tags                  = {
    "Name"              = "sub3"
  }
}
resource "aws_subnet" "sub4" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.3.0/24"
  availability_zone     = "us-west-2d"
  tags                  = {
    "Name"              = "sub4"
  }
}
resource "aws_subnet" "sub5" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.4.0/24"
  availability_zone     = "us-west-2a"
  tags                  = {
    "Name"              = "sub5"
  }
}
resource "aws_subnet" "sub6" {
  vpc_id                = aws_vpc.my_vpc.id
  cidr_block            = "192.168.5.0/24"
  availability_zone     = "us-west-2b"
  tags                  = {
    "Name"              = "sub6"
  }
}
