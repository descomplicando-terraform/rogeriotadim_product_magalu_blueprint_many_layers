resource "mgc_network_public_ips_attach" "public_ip_attachment" {
  interface_id = var.interface_id
  public_ip_id = var.public_ip_id
}

output "public_ip_attachment" {
  value = mgc_network_public_ips_attach.public_ip_attachment
}
