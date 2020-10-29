
resource "aws_instance" "DevInstanceAWS" {
  count         = "${var.instance_count}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  ami           = "${var.ami_id}"
  key_name      = "${var.ssh_key_name}"
  vpc_security_group_ids = [aws_security_group.web_external.id]

  tags = {
    Name = "DevInstanceAWS-${count.index + 1}"
  }
}
resource "aws_security_group" "web_external" {
    vpc_id = "${var.vpc_id}"

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["94.6.20.160/32"]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["94.6.20.160/32"]
    }

    tags = {
        Name = "web_external"
    }
}

resource "aws_key_pair" "Test" {
  key_name   = "Test"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}