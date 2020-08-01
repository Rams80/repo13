resource "aws_default_security_group" "sg_devops" {
  vpc_id = "${aws_vpc.vpc_devops.id}"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
	cidr_blocks = ["0.0.0.0/0"]
  }
  }
