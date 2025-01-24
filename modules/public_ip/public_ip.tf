resource "mgc_network_public_ips" "public_ip" {
  description = var.description
  vpc_id      = var.vpc_id
}

output "public_ip" {
  value = mgc_network_public_ips.public_ip
}
