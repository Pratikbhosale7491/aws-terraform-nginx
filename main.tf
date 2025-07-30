module "vpc" {
  source = "./modules/vpc"
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  subnet_id      = module.vpc.public_subnet_id
  security_group = module.sg.sg_id
  user_data      = file("${path.module}/user-data/install-nginx.sh")
}
