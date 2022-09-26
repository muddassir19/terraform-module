variable "vpc_cidr" {
  type= string
  default = "172.16.0.0/16"  
}

variable "vpc_tag" {
  type = map(any)
  default ={ 
    "Name" = "my_vpc"
    } 
}

variable "subnet_cidr" {
  type= string
  default = "172.16.10.0/24"  
}

variable "subnet_tag" {
  type = map(any)
  default ={ 
    "Name" = "public_subnet"
    } 
}

variable "sg_tag" {
  type = map(any)
  default ={ 
    "Name" = "allow_tls"
    } 
}

variable "private_ips" {
    type = list(string)
    default = [ "172.16.10.100" ]  
}

variable "nic_tag" {
  type = map(any)
  default ={ 
    "Name" = "primary_network_interface"
    } 
}

variable "instance_ami" {
  type = string
  default = "ami-01216e7612243e0ef"
}
/*
variable "instance_ami_northeast_3" {
  type = string
  default = "ami-0953215c6a0ce5164"
}
*/
variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "intance_tag" {
  type = map(any)
  default = {
    "Name" = "PROUD_SERVER" 
  }
}

variable "instance_config" {
  type = map(any)
}