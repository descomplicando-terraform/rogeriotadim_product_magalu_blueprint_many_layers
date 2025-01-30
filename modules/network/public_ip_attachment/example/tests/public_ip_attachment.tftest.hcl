
run "create_public_ip_attachment" {

variables {
  public_ip_id = "f5e99efa-bbed-4144-a724-25eaac28d387"
  interface_id = "0cab4786-acd0-4496-ab73-72a1f20503cb"
}

  command = plan

  assert {
    condition     = module.public_ip_attachment.public_ip_attachment != null
    error_message = "invalid attachment"
  }

}
