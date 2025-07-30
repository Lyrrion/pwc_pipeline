output "nsg_ids" {
  value = {
    for nsg in azurerm_network_security_group.nsg : nsg.name => nsg.id
  }
}
    