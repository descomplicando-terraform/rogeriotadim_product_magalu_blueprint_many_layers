resource "mgc_virtual_machine_instances" "instances" {
  count             = var.qtd_instances
  name              = "${var.name}-${count.index}"
  availability_zone = var.qtd_instances != 1 ? var.availability_zone_list[count.index] : null
  machine_type      = var.machine_type
  image             = var.image
  ssh_key_name      = var.ssh_key_name
  vpc_id            = var.vpc_id
}

output "instances" {
  value = mgc_virtual_machine_instances.instances
}
