# by using this teraform file we r fetching the ami-id dynamically .And used that ami for creating the instance

# fetching the ami-id dynamically
data "aws_ami" "centos-ami" {
  
  owners = ["973714476881"]
  most_recent = true

   filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
# using fetched dynamicaly ami-id crearing ec2-instance.
resource "aws_instance""web"{

    instance_type= "t2.micro"
    ami= data.aws_ami.centos-ami.id
    #vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        Name="pavan"
    }
}

# fetching the default-vpc id by using data-sources

data "aws_vpc" "default-vpc-id" {
  default = true
}