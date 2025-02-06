resource "mgc_dbaas_instances" "dbaas_instance" {
  name                  = var.name
  user                  = var.user
  password              = var.password
  engine_name           = var.engine_name
  engine_version        = var.engine_version
  instance_type         = var.instance_type
  volume_size           = var.volume_size
  backup_retention_days = 10
  backup_start_at       = "16:00:00"
}

output "dbaas_instance" {
  value = mgc_dbaas_instances.dbaas_instance
}
