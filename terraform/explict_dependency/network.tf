resource "aws_vpc" "my_vpc" {
  cidr_block          = "10.10.0.0/16"
     tags             = {
       "Name"         = "tff"
     }
}
resource "aws_subnet" "subnet_1" {
    vpc_id            = aws_vpc.my_vpc.id  #implicit dependency 
    cidr_block        = "10.10.0.0/24"
    tags              = {
      "Name"          = "frntend"
    }

    #explicit dependency
    depends_on        = [
                  aws_vpc.my_vpc
    ]

  
}
resource "aws_subnet" "subnet_2" {
  vpc_id              = aws_vpc.my_vpc.id  #implicit dependency
  cidr_block          = "10.10.1.0/24"
  tags                = {
    "Name"            = "database"
  }

  #explicit dependency
  depends_on          = [
            aws_subnet.subnet_1
  ]
}
resource "aws_subnet" "subnet_3" {
  vpc_id              = aws_vpc.my_vpc.id   #implicit dependency
  cidr_block          = "10.10.2.0/24"
  tags                = {
    "Name"            = "middleware"
  }

  #explicit dependency
  depends_on          = [
              aws_subnet.subnet_2
  ]
}