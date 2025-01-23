resource "mgc_network_vpcs_subnets" "subnets" {
  name          = var.name
  description   = var.description
  cidr_block    = var.cidr_block
  ip_version    = "IPv4"
  subnetpool_id = var.subnetpool_id
  vpc_id        = var.vpc_id
}

output "vpc_id" {
  value = mgc_network_vpcs.vpc.id
}

output "vpc_name" {
  value = mgc_network_vpcs.vpc.name
}