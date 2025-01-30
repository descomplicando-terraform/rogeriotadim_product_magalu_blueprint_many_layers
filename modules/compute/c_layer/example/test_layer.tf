resource "random_string" "random" {
  length  = 5
  special = false
}

module "instances_key" {
  source = "../../ssh_key_pair"
  name   = "${var.prefix}-${lower(random_string.random.result)}"
  key    = file("../../ssh_key_pair/example/ssh/id_rsa.pub")
}


module "layer" {
  depends_on    = [module.instances_key]
  source        = "../"
  qtd_instances = var.qtd_instances
  prefix        = var.prefix
  type          = var.type
  image         = var.image
  ssh_key_name  = module.instances_key.instances_key.name
  machine_type  = var.machine_type
  vpc_id        = var.vpc_id
}

output "layer" {
  value = module.layer
}