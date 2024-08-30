variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
  type = string
}

variable "instance_type" {
    type = string
    #default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name= "hello terraform"
        project="roboshop"
        environment="dev"
        component="web"
        terraform="true"
    }
}

variable "sg_name" {
    type = string
    default = "roboshop-web-securitygroup"
  
}

variable "cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
  
}
variable "sg-description" {
    type = string
    default = "allowing all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}