output "nic_ids" {
  value = {
    for k, nic in azurerm_network_interface.nic :
    k => nic.id
  }
}
