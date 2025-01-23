data "mgc_network_vpc" "vpc" {
  id = "971c798c-c788-4166-b051-2f3f850c7858"
}

data "mgc_network_subnetpool" "subnetpool" {
  id = "50ba0f14-9b43-4ef9-ac42-da78cdd0afd0"
}

module "subnets" {
  source        = "../"
  name          = var.name
  description   = "subnet created by Terraform in order to test"
  vpc_id        = data.mgc_network_vpc.vpc.id
  subnetpool_id = data.mgc_network_subnetpool.subnetpool.id
  cidr_block    = cidrsubnet(data.mgc_network_subnetpool.subnetpool.cidr, 12, 4095)
}

output "subnet" {
  value = module.subnets.subnet
}