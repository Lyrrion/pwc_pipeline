resource "azurerm_linux_virtual_machine" "example" {
  for_each            = var.virtual_machines

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  size                = each.value.vm_size

  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  disable_password_authentication = false

  network_interface_ids = [
    var.nic_ids[each.value.nic_key]
  ]

  os_disk {
    name              = each.value.os_disk_name
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }

  computer_name = each.value.name
  tags = {
    environment = "Dev"
  }
}
