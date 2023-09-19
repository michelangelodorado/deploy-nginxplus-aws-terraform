variable "main_region" {
  type    = string
  default = "ap-southeast-1"
}

provider "aws" {
  region = var.main_region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.main_region
}

resource "aws_instance" "my-instance" {
  ami           = module.vpc.ubuntu_ami_id
  subnet_id     = module.vpc.subnet_id
  instance_type = "t2.micro"
}
