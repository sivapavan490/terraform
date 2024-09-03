output "ami-id" {
    value = data.aws_ami.centos-ami.id
}

output "vpc-info" {

    value = data.aws_vpc.default-vpc-id.id
  
}
output "instance_info"{
    value = aws_instance.web
}