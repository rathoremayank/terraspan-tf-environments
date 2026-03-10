# VPC Outputs
output "vpc_id" {
  description = "VPC ID"
  value       = module.networking.vpc_id
}

output "vpc_cidr" {
  description = "VPC CIDR block"
  value       = module.networking.vpc_cidr
}

# Subnet Outputs
output "subnet_id" {
  description = "Private Subnet ID"
  value       = module.networking.subnet_id
}

output "subnet_cidr" {
  description = "Private Subnet CIDR block"
  value       = module.networking.subnet_cidr
}

# Route Table Outputs
output "route_table_id" {
  description = "Private Route Table ID"
  value       = module.networking.route_table_id
}

# Security Group Outputs
output "security_group_id" {
  description = "Private Security Group ID"
  value       = module.networking.security_group_id
}

# EC2 Instance Outputs
output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.compute.instance_id
}

output "instance_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = module.compute.instance_private_ip
}

output "instance_state" {
  description = "Current state of the EC2 instance"
  value       = module.compute.instance_state
}

output "instance_availability_zone" {
  description = "Availability zone of the instance"
  value       = module.compute.instance_availability_zone
}

output "primary_network_interface_id" {
  description = "Primary network interface ID"
  value       = module.compute.primary_network_interface_id
}
