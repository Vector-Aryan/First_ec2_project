variable "aws_region" {
  default = "ap-south-1"
  type    = string
}

variable "aws_instance_type" {
  default = "t3.micro"
  type    = string

}

variable "aws_ami" {
  default = "ami-0011550b539717e2a"
  type    = string

}

variable "aws_key" {
  default = "demo_key"
  type    = string
}