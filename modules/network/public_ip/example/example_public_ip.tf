data "mgc_network_vpc" "vpc" {
  id = "971c798c-c788-4166-b051-2f3f850c7858"
}

module "public_ip" {
  source      = "../"
  vpc_id      = data.mgc_network_vpc.vpc.id
  description = "Public IP for the VPC"
}

output "public_ip" {
  value = module.public_ip.public_ip
}