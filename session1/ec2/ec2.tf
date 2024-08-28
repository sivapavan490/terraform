resource "aws_instance""web"{

    instance_type= "t2.micro"
    ami= "ami-0b4f379183e5706b9"
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        Name="pavan"
    }
}

resource "aws_security_group" "roboshop-all"{ # this is terraform name
    name = var.sg-name # this is for aws
    description="allowing all trafiic1"
    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = var.cidr_block
        #ipv6_cidr_blocks = ["::/0"]
  }
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_block
    #ipv6_cidr_blocks = ["::/0"]
  }

tags={
    Name="security group"
}

}