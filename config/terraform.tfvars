vpc_cidr = "172.16.0.0/16"

vpc_tag = {
    "Name" = "my_vpc"
}

subnet_cidr = "172.16.10.0/24"
subnet_tag = {
    "Name" = "public_subnet"
}
sg_tag = {
    "Name" = "allow_tls"
}








instance_config ={
  instance_1 = {
    nic_tag = {"Name" = "dev_nic2"}
    private_ips = ["172.16.10.101"]
    instance_ami = "ami-01216e7612243e0ef"
    instance_type = "t2.micro"
    intance_tag = {"Name" = "DEV_SERVER2"}
  }

  instance_2 = {
    nic_tag = {"Name" = "dev_nic3"}
    private_ips = ["172.16.10.102"]
    instance_ami = "ami-01216e7612243e0ef"
    instance_type = "t2.micro"
    intance_tag = {"Name" = "DEV_SERVER3"}

  }
  
}