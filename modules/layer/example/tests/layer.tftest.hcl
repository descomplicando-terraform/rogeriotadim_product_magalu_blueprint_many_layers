variables {
  vpc_id = "971c798c-c788-4166-b051-2f3f850c7858"
  instance_index = 0
}

# run "create_layer_with_one_instance" {
#   variables {
#     qtd_instances = 1
#   }

#   command = apply

#   assert {
#     condition     = module.layer.layer[var.instance_index].instances[var.instance_index].name == "${var.prefix}-${var.type}-${var.instance_index}"
#     error_message = "invalid name"
#   }
# }

run "create_layer_with_three_instances" {
  command = apply

  variables {
    qtd_instances = 3
  }

  assert {
    condition     = module.layer.layer_lb[var.instance_index].instances[var.instance_index].name == "${var.prefix}-${var.type}-lb-${var.instance_index}"
    error_message = "invalid name"
  }

  assert {
    condition     = module.layer.layer.instances[var.instance_index].name == "${var.prefix}-${var.type}-${var.instance_index}"
    error_message = "invalid name"
  }
}
