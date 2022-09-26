variable "vpc_id" {
  type = string
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