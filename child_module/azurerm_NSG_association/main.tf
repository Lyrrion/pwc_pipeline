resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  for_each = var.subnet_nsg_map

  subnet_id                 = module.subnet.subnet_ids[each.value.subnet_key]
  network_security_group_id = module.nsg.nsg_ids[each.value.nsg_key]
}
