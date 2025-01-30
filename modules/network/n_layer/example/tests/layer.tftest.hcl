
run "layer" {
  command = apply

  assert {
    condition     = module.layer.vpc.vpc_id != ""
    error_message = "invalid vpc"
  }

  assert {
    condition     = module.layer.subnetspool.subnetpool.id != ""
    error_message = "invalid subnetpool"
  }

  assert {
    condition     = module.layer.subnets.subnets[0].id != ""
    error_message = "invalid subnet"
  }
}
