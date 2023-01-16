resource "aws_vpc" "my_vpc1" {
  cidr_block = "10.10.0.0/16"
  tags = {
    "Name" = "fromtf"
  }
}