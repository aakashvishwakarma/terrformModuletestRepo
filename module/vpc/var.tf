variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}
variable "tennancy" {
  default ="dedicated"
}
variable "subnet_cidr" {
  default = "10.0.1.0/24" # if no value find it uses this default value
}
variable "vpc_id" {             #As here we are not assigning any value so user need to provide this valus himself
  description = "Put vpc-id"
}