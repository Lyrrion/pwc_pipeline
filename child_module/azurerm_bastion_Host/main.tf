
resource "azurerm_bastion_host" "example" {
    for_each = var.bastion_host
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.ip_configuration.name
    subnet_id            = var.subnet_ids[each.value.subnet_key]
    public_ip_address_id = var.public_ip_ids[each.value.public_ip_key]
  }
}