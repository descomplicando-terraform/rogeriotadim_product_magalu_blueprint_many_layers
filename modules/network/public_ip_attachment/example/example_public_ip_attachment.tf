module "public_ip_attachment" {
  source       = "../"
  public_ip_id = var.public_ip_id
  interface_id = var.interface_id
}

output "public_ip_attachment" {
  value = module.public_ip_attachment.public_ip_attachment
}