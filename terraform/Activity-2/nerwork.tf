resource "aws_vpc" "my" {
    cidr_block   = var.vpc_range
    tags         = {
      "Name"     = "fromtf"
      "env"      = "dev"

    }
  
}