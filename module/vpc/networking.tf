resource "aws_vpc" "vpc" {
  cidr_block       = "${var.vpc_cidr}" // here used variable to pass cidr block
  instance_tenancy = "${var.tennancy}"

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "Subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "Main"
  }
}

output "vpc_id" {               //It get output of vpc id from above resource aws_vpc
  value ="${aws_vpc.vpc.id}"
}
output "subnet_id" {               //It get vpc id from above resource aws_vpc
  value ="${aws_subnet.Subnet.id}"
}

