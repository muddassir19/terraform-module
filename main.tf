module "vpc" {
  source = "./modules/aws_vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tag = var.vpc_tag
}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
  subnet_tag = var.subnet_tag
}

module "sg" {
  source = "./modules/aws_sg"
  vpc_id = module.vpc.vpc_id
  sg_tag = var.sg_tag
}

module "nic" {
  source = "./modules/aws_nic"
  for_each = var.instance_config
  subnet_id = module.subnet.subnet_id
  private_ips = each.value.private_ips
  nic_tag = each.value.nic_tag
}

module "instance" {
  source = "./modules/aws_instance"
  for_each = var.instance_config
  instance_ami = each.value.instance_ami
  instance_type = each.value.instance_type
  nic_id = module.nic[each.key].nic_id
  intance_tag = each.value.intance_tag
}
/*
module "instance_east_1" {
  source = "./modules/aws_instance"
  providers = {
    aws = aws.east-3
   }
  instance_ami = var.instance_ami_northeast_3
  instance_type = var.instance_type
  nic_id = module.nic.nic_id
  intance_tag = var.intance_tag
}
*/