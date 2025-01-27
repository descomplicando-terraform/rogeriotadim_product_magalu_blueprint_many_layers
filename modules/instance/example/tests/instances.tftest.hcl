run "create_one_instance" {
  command = plan

  assert {
    condition     = module.instances.instances[0].name != ""
    error_message = "invalid name"
  }
}

run "create_three_instancea" {
  command = apply

variables {
  qtd_instances = 3
}

  assert {
    condition     = module.instances.instances[0].name != ""
    error_message = "invalid name"
  }

}
