
run "create_public_ip" {
  command = apply

  assert {
    condition     = module.public_ip.public_ip.id != ""
    error_message = "invalid id"
  }

}
