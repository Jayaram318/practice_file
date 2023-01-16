resource "aws_vpc" "neww" {
    cidr_block = var.vpc_range
    tags = {
        "Name" ="for first"
        "purpose"="dev"
    }  
}