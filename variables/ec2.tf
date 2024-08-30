resource "aws_instance""web"{

    instance_type= var.instance_type
    ami= var.ami_id
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = var.tags
}