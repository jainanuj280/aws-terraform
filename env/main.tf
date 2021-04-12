module "vpc" {
  source = "../modules/vpc" 
  # vpc_id = module.vpc.vpc_id
  # subnet_id = module.vpc.subnet_id
}

module "ec2" {
  source = "../modules/ec2"
  subnet_id = module.vpc.subnet_id
}