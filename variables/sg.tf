
resource "aws_security_group" "roboshop-all"{ # this is terraform name
    name = var.sg_name # this is for aws
    description=var.sg-description
    ingress {
        from_port        = var.inbound-from-port
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