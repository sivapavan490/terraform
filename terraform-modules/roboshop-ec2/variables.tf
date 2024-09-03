variable "instance_type" {
  default = "t3.medium"
}
variable "tags" {
  default = {
    Name = "roboshop-module"
    terraform= "TRUE"
    environment= "dev"
  }
}