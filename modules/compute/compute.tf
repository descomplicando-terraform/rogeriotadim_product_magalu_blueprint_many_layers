locals {
  count_lb = var.qtd_instances == 1 ? 0 : 1
}

module "layer_lb" {
  source        = "../instance"
  count         = local.count_lb
  name          = "${var.prefix}-${var.type}-lb"
  image         = var.image
  ssh_key_name  = var.ssh_key_name
  machine_type  = var.machine_type
  qtd_instances = 1
  vpc_id        = var.vpc_id
}

output "layer_lb" {
  value = module.layer_lb
}

module "layer" {
  source        = "../instance"
  qtd_instances = var.qtd_instances
  name          = "${var.prefix}-${var.type}"
  image         = var.image
  ssh_key_name  = var.ssh_key_name
  machine_type  = var.machine_type
  vpc_id        = var.vpc_id
}

output "layer" {
  value = module.layer
}
