vpc_cidr = "172.16.0.0/16"

vpc_tag = {
    "Name" = "dev_vpc"
}

subnet_cidr = "172.16.10.0/24"
subnet_tag = {
    "Name" = "dev_public_subnet"
}
sg_tag = {
    "Name" = "dev_allow_tls"
}

private_ips = ["172.16.10.100"]

nic_tag = {
  "Name" = "dev_nic"
}

instance_ami = "ami-01216e7612243e0ef"
instance_type = "t2.micro"
intance_tag = {
  "Name" = "dev_SERVER" 
}