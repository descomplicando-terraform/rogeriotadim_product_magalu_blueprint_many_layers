# valid_string_concat.tftest.hcl

variables {
  name = "mysql-test"
}

run "create_mysql" {
  command = apply

  assert {
    condition     = module.dbaas.dbaas_instance.name == var.name
    error_message = "invalid name"
  }

}
