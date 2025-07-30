resource "azurerm_network_interface" "nic" {
  for_each = var.network_interfaces

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_configuration.name
    subnet_id                     = var.subnet_ids[each.value.subnet_key]
    private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
  }
}
 