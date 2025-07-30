network_interfaces = {
  "nic-frontend-1" = {
    name                = "nic-frontend-1"
    location            = "East US"
    resource_group_name = "Rg_moon"

    ip_configuration = {
      name                          = "ipconfig1"
      subnet_key                    = "frontend_1"
      private_ip_address_allocation = "Dynamic"
    }
  }
    "nic-backend-1" = {
        name                = "nic-backend-1"
        location            = "East US"
        resource_group_name = "Rg_moon"
    
        ip_configuration = {
        name                          = "ipconfig2"
        subnet_key                    = "backend_1"
        private_ip_address_allocation = "Dynamic"
        }
    }
}


