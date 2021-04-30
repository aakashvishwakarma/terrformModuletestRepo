  variable "ec2_count" {
    default  ="1"
  }
  variable "ami_id" {
    description =" Please put ami id"
  }
  variable "instance_type" {
    default = "t2.micro"
  }
  variable "subnet_id" {
  #  default   ="{aws_subnet.Subnet.id}"
  }