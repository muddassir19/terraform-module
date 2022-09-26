#Create a vpc name called my_vpc in region ap-south-1
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = var.vpc_tag
}

