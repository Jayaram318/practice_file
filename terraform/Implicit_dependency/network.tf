resource "aws_vpc" "my_vpc" {
  cidr_block = "10.10.0.0/16"
     tags = {
       "Name" = "tff"
     }
}
resource "aws_subnet" "subnet_1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.0.0/24"
    tags = {
      "Name" = "frntend"
    }
  
}
resource "aws_subnet" "subnet_2" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.10.1.0/24"
  tags = {
    "Name" = "database"
  }
}
resource "aws_subnet" "subnet_3" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.10.2.0/24"
  tags = {
    "Name" = "middleware"
  }
}