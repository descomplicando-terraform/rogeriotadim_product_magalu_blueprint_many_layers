resource "mgc_network_vpcs_subnets" "subnet" {
  name          = var.name
  description   = var.description
  cidr_block    = var.cidr_block
  ip_version    = "IPv4"
  subnetpool_id = var.subnetpool_id
  vpc_id        = var.vpc_id
}

output "subnet" {
  value = mgc_network_vpcs_subnets.subnet
}
