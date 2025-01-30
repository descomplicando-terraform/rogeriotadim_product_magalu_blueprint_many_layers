# locals {
#   cidr_pool = data.mgc_network_subnetpool.subnetpool.cidr
#   subnets = {
#     cidrsubnet(local.cidr_pool, 12, 4091) = {
#       name          = "subnet-test-4091"
#       description   = "subnet 4091 created by Terraform in order to test"
#       vpc_id        = data.mgc_network_vpc.vpc.id
#       subnetpool_id = data.mgc_network_subnetpool.subnetpool.id
#     }
#     cidrsubnet(local.cidr_pool, 12, 4092) = {
#       name          = "subnet-test-4092"
#       description   = "subnet 4092 created by Terraform in order to test"
#       vpc_id        = data.mgc_network_vpc.vpc.id
#       subnetpool_id = data.mgc_network_subnetpool.subnetpool.id
#     }
#     cidrsubnet(local.cidr_pool, 12, 4093) = {
#       name          = "subnet-test-4093"
#       description   = "subnet 4093 created by Terraform in order to test"
#       vpc_id        = data.mgc_network_vpc.vpc.id
#       subnetpool_id = data.mgc_network_subnetpool.subnetpool.id
#     }
#   }
# }

module "layer" {
  source          = "../"
  vpc_name        = var.vpc_name
  vpc_description = var.vpc_description
  prefix          = var.prefix
  type            = var.type
  subnetpool_cidr = var.subnetpool_cidr
  subnetpool_type = var.subnetpool_type
  subnetpool_name = var.subnetpool_name
  subnets = {
    "172.16.43.0/24" : {
      name        = "subnet-example"
      description = "subnet example created by Terraform in order to test"
    }
  }
}

output "layer" {
  value = module.layer
}