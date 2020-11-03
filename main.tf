module "ec2" {
  count          = "1"
  source         = "./modules/ec2"
  aws_region     = "eu-west-2"
  instance_type  = "t2.nano"
  instance_name  = "DevInstanceAWS--1"
  ami_id         = "ami-09b89ad3c5769cca2"
  subnet_id      = "${element(module.vpc.public_subnets, count.index)}"
  security_group = "web_external"
  ssh_user_name  = "Test"
  ssh_key_name   = "Test"
  ssh_key_path   = "./modules/ec2/Test.pem"
  dev_host_label = "dev"
  instance_count = "1"
  vpc_id         = "${module.vpc.vpc_id}"
}
module "vpc" {
    source       = "./modules/vpc"
    vpc_cidr     = "10.132.0.0/21"
    vpc_id       = "vpc-dev"
    public_subnets_cidr = ["10.132.1.0/26","10.132.1.64/26"]
    private_subnets_cidr = ["10.132.2.0/26","10.132.2.64/26"]
    azs          = ["eu-west-2a", "eu-west-2b"]
}
module "s3" {
    source = "./modules/s3"
}
