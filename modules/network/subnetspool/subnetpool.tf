resource "mgc_network_subnetpools" "subnetpool" {
  name        = var.name
  description = var.description
  type        = var.type
  cidr        = var.cidr
}
output "subnetpool_id" {
  value = mgc_network_subnetpools.subnetpool.id
}

output "subnetpool_name" {
  value = mgc_network_subnetpools.subnetpool.name
}

output "subnetpool_cidr" {
  value = mgc_network_subnetpools.subnetpool.cidr
}
