output "public_ip_ids" {
  value = {
    for pip in azurerm_public_ip.test_public_ip :
    pip.name => pip.id
  }
}
