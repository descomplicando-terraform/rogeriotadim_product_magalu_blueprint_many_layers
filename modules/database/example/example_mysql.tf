module "dbaas" {
  source         = "../"
  name           = var.name
  user           = "yourusername"
  password       = "your%$#Password"
  engine_name    = "mysql"
  engine_version = "8.0"
  instance_type  = "cloud-dbaas-gp1.small"
  volume_size    = 50
}
