module "vpc" {
  source = "../../modules/vpc"
  
  project_name = var.project_name
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  tenancy = var.tenancy
}

module "ec2" {
  source = "../../modules/ec2"
  project_name = var.project_name
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = module.vpc.subnet_id
  security_group_id = module.security-group.security_group_id
}

module "s3" {
  source = "../../modules/s3"

  project_name = var.project_name
  bucket_name = var.bucket_name
}

module "iam" {
  source = "../../modules/iam"
  
  iam_username = var.iam_username
  policy_arn = var.policy_arn
}


module "security-group" {
  source = "../../modules/security-group"
  
  vpc_id = module.vpc.vpc_id
  security_group_name = var.security_group_name
}
