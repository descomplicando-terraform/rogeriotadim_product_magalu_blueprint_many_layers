# valid_string_concat.tftest.hcl

variables {
  name = "vpc-test"
  cidr_block = "192.168.0.0/24"
}

run "create_subnet" {
  command = apply

  assert {
    condition     = module.subnets.subnet.name == var.name
    error_message = "invalid name"
  }

}
