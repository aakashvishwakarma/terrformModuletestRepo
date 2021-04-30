provider "aws" {
  region ="us-east-1"
 }

module "my_vpc" {
  source = "../module/vpc"
  vpc_cidr ="192.168.0.0/16"
  tennancy ="default"
  vpc_id   ="${module.my_vpc.vpc_id}" 
  subnet_cidr="192.168.1.0/24"
}

module "my_instance" {
  source ="../module/ec2"
  ec2_count= "1"
  ami_id ="ami-048f6ed62451373d9"
  #instance_type ="t2.micro" // we have already defined default value as t2.micro
  subnet_id = "${module.my_vpc.subnet_id}"
  }