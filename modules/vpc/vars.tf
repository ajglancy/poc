variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "vpc_cidr" {
  default = "10.132.0.0/21"
}

variable "vpc_id" {}

variable "public_subnets_cidr" {
  type    = list
  default = ["10.132.1.0/26"]
}

variable "private_subnets_cidr" {
  type    = list
  default = ["10.132.2.0/26", "10.132.2.64/26"]
}

variable "azs" {
  type    = list
  default = ["eu-west-2a", "eu-west-2b"]
}

