#aws.tf tested verifed ec2 vms and logged into the servers
provider "aws" {
	region = "ap-southeast-1"
	access_key = "AKIAJJAJFGWII54442LA"
	secret_key = "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"
}

resource "aws_vpc" "vpc_devops" {
  cidr_block = "11.56.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "vpc_devops"
  }
}

resource "aws_subnet" "sub_public_devops" {
  vpc_id = "${aws_vpc.vpc_devops.id}"
  cidr_block = "11.56.0.0/16"
  tags = {
    Name = "sub_public_devops"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.vpc_devops.id}"

  tags = {
    Name = "gateway"
  }
}