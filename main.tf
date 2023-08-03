provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key 
}

resource "aws_security_group" "my-security-group" {
    name        = var.security_group
    description = "ec2 instance security group"

    ingress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 65535
        protocol    = "tcp"
        cidr_blocks =["0.0.0.0/0"]
    }

    tags = {
        Name = var.security_group
    }
}

resource "aws_instance" "test_instance" {
    ami             = var.ami_id
    key_name        = var.key_name
    instance_type   = var.instance_type
    security_group  = [var.security_group]
    tags {
        Name    = var.tag_name
    }
}
