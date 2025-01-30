module "vpc" {
  source      = "../vpc"
  name        = "${var.prefix}-${var.type}-lb"
  description = var.vpc_description
}

output "vpc" {
  value = module.vpc
}

module "subnetspool" {
  source = "../subnetspool"
  name   = var.subnetpool_name
  cidr   = var.subnetpool_cidr
  type   = var.subnetpool_type
}

output "subnetspool" {
  value = module.subnetspool
}

module "subnets" {
  source = "../subnets"
  subnets = {
    cidrsubnet(module.subnetspool.subnetpool, 1, 0) = {
      name          = var.subnets.name
      description   = var.subnets.description
      subnetpool_id = module.subnetspool.subnetpool.id
      vpc_id        = module.vpc.vpc_id
    cidr_block = var.subnets.cidr_block }
  }
}

output "subnets" {
  value = module.subnets
}
