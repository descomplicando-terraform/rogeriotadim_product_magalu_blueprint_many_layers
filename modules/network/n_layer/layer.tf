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

locals {
  # subnets = {
  #   cidrsubnet(module.subnetspool.subnetpool.cidr, 1, 0) = {
  #     name          = var.subnets[0].name
  #     description   = var.subnets[0].description
  #     subnetpool_id = module.subnetspool.subnetpool.id
  #     vpc_id        = module.vpc.vpc_id
  #   }
  # }

  qtd_subnets = (length(var.subnets) + (length(var.subnets) % 2)) / 2


  subnets = {
    for k, subnet in var.subnets :
    cidrsubnet(module.subnetspool.subnetpool.cidr, local.qtd_subnets, k) => {
      name          = subnet.name
      description   = subnet.description
      subnetpool_id = module.subnetspool.subnetpool.id
      vpc_id        = module.vpc.vpc_id
    }
  }
}

module "subnets" {
  depends_on = [module.subnetspool]
  source     = "../subnets"
  subnets    = local.subnets
}

output "subnets" {
  value = module.subnets
}
