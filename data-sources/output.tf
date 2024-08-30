output "ami-id" {
    value = data.aws_ami.centos-ami.id
}

output "vpc-id" {

    value = data.aws_vpc.default-vpc-id.id
  
}