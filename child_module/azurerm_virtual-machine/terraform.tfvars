virtual_machines = {
  vm1 = {
    name                  = "vm-east"
    location              = "East Us"
    resource_group_name   = "Rg_moon"
    subnet_key            = "frontend_1"
    nic_key               = "nic-frontend-1"
    vm_size               = "Standard_B1s"
    admin_username        = "azureuser"
    admin_password        = "P@ssw0rd1234"
    os_disk_name          = "osdisk-vm-east"
    image_publisher       = "Canonical"
    image_offer           = "UbuntuServer"
    image_sku             = "18.04-LTS"
    image_version         = "latest"
  }
}

nic_ids = {
  "nic-frontend-1" = ""
}