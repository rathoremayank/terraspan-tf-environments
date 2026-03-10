# Networking Module
module "networking" {
  source = "../terraspan-tf-modules/networking"

  vpc_cidr           = var.vpc_cidr
  subnet_cidr        = var.subnet_cidr
  availability_zone  = var.availability_zone
  environment        = var.environment
  project_name       = var.project_name
  enable_nat_gateway = false # Set to true if outbound internet access is needed

  tags = var.common_tags
}

# Compute Module
module "compute" {
  source = "../terraspan-tf-modules/compute"

  instance_type       = var.instance_type
  instance_name       = var.instance_name
  subnet_id           = module.networking.subnet_id
  security_group_id   = module.networking.security_group_id
  environment         = var.environment
  project_name        = var.project_name
  associate_public_ip_address = false # Ensure private instance
  root_volume_size    = var.root_volume_size
  monitoring          = true

  # Optional: Add user data script
  # user_data = base64encode(file("${path.module}/user_data.sh"))

  tags = var.common_tags
}
