variable "instance_ami" {
  type = string
  default = "ami-01216e7612243e0ef"
}

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

variable "nic_id" {
  type = string
}
