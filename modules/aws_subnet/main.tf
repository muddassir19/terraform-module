#Create AWS subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    availability_zone = "ap-south-1a"
    tags = var.subnet_tag
}

