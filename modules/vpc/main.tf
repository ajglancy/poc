provider "aws" {
    region = "eu-west-2"
}

resource "aws_vpc" "dev-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  instance_tenancy     = "default"

  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_subnet" "dev-subnet-public" {
  count                   = "${length(var.azs)}"
  vpc_id                  = "${aws_vpc.dev-vpc.id}"
  cidr_block              = "${element(var.public_subnets_cidr, count.index)}"
  map_public_ip_on_launch = "true" //it makes this a public subnet
  availability_zone       = "${element(var.azs, count.index)}"

  tags = {
    Name = "dev-subnet-public-${count.index + 1}"
  }
}


resource "aws_subnet" "dev-subnet-private" {
  count                   = "${length(var.azs)}"
  vpc_id                  = "${aws_vpc.dev-vpc.id}"
  cidr_block              = "${element(var.private_subnets_cidr, count.index)}"
  map_public_ip_on_launch = "false" //it makes this a public subnet
  availability_zone       = "${element(var.azs, count.index)}"

  tags = {
    Name = "dev-subnet-private-${count.index + 1}"
  }
}

# create an IGW (Internet Gateway)
# It enables your vpc to connect to the internet
resource "aws_internet_gateway" "dev-igw" {
  vpc_id = "${aws_vpc.dev-vpc.id}"

  tags = {
    Name = "dev-igw"
  }
}

#create an Elastic IP (To be assigned to NAT Gateway)
resource "aws_eip" "nat" {
  vpc = true
}

# # create an NGW (NAT Gateway)
# # It enables your vpc to connect to the internet
resource "aws_nat_gateway" "dev-ngw" {
  count         = "1"
  allocation_id = aws_eip.nat.id
  subnet_id     = "${element(aws_subnet.dev-subnet-private.*.id, count.index)}"
  tags = {
    Name = "dev-ngw"
  }
}

# create a custom route table for public subnets
# public subnets can reach to the internet buy using this
resource "aws_route_table" "dev-public-crt" {
  vpc_id = "${aws_vpc.dev-vpc.id}"
  route {
    cidr_block = "94.6.20.160/32"                          //associated subnet can reach everywhere
    gateway_id = "${aws_internet_gateway.dev-igw.id}" //CRT uses this IGW to reach internet
  }

  tags = {
    Name = "dev-public-rt"
  }
}

# route table association for the public subnets
resource "aws_route_table_association" "dev-crta-public-subnet" {
  count          = "${length(var.public_subnets_cidr)}"
  subnet_id      = "${element(aws_subnet.dev-subnet-public.*.id, count.index)}"
  route_table_id = "${aws_route_table.dev-public-crt.id}"
}

# create a custom route table for private subnets
# private subnets can reach to the internal resources buy using this
resource "aws_route_table" "dev-private-crt" {
  vpc_id = "${aws_vpc.dev-vpc.id}"
  #   route {
  #       cidr_block = "0.0.0.0/0" //associated subnet can reach everywhere
  #       nat_gateway_id = "dev-ngw" //CRT uses this NGW to reach internet
  #   }

  tags = {
    Name = "dev-private-rt"
  }
}

# route table association for the private subnets
resource "aws_route_table_association" "dev-crta-private-subnet" {
  count          = "${length(var.private_subnets_cidr)}"
  subnet_id      = "${element(aws_subnet.dev-subnet-private.*.id, count.index)}"
  route_table_id = "${aws_route_table.dev-private-crt.id}"
}


