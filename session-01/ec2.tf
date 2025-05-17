resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]

  tags = {
    Name = "docker"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = "${aws_vpc.main.id}"
  
  ingress {
    description = "All all ports"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
  from_port   = var.outbound_traffic
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

  tags = {
    Name = "roboshop-all"
  }
}

