variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  type    = string
  default = "Instance-Key"
}

variable "Name" {
  type    = string
  default = "Web-Server"
}

variable "ami_id" {
  type    = string
  default = "ami-052efd3df9dad4825"
}

variable "instnace_profile" {
  type    = string
  default = "t2.micro"
}

variable "bucket_name" {
  type    = string
  default = "terraform-backend-19082022"
}

variable "table_name" {
  type    = string
  default = "terraform-backend"
}

variable "instnace_profile" {
  type = string
  default = "myrole"
}