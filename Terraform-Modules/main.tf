module "vpc" {
  source = "./modules/vpc"
  cidr   = "10.0.0.0/16"
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
}

