resource_group = {
  ##new confilict has to solve very esier way with out issue 


  rg_1 = {
    name     = "Rg_moon"
    location = "East US"
  }

  rg_2 = {
    name     = "Rg_sun"
    location = "Central India"
  }

  rg_3 = {
    name     = "Rg_mars"
    location = "West US"
  }

}


  storage_account = {
    stg_1 = {
    name = "storage78542365"
    resource_group_name = "Rg_moon"
    location = "East US"
    account_replication_type = "ZRS"
    account_tier = "Standard"
    public_network_access_enabled = false
    min_tls_version = "TLS1_2"
    allow_blob_public_access = false
    }

    stg_2= {
    name = "storage78542384"
    resource_group_name = "Rg_sun"
    location = "Central India"
    account_replication_type = "LRS"
    account_tier = "Standard"
    public_network_access_enabled = true
    min_tls_version = "TLS1_2"
    allow_blob_public_access = true
    }
  }


virtual_network = {
  vnet_1 = {
    name                = "vnet-1"
    location            = "East US"
    resource_group_name = "Rg_moon"
    address_space       = ["10.0.0.0/25"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }

  vnet_2 = {
    name                = "vnet-2"
    location            = "Central India"
    resource_group_name = "Rg_sun"
    address_space       = ["10.1.0.0/24"]
    dns_servers         = ["10.1.0.4", "10.1.0.5"]
  }
}

subnet = {
  "frontend_1" = {
    name                 = "frontend_1"
    resource_group_name  = "Rg_moon"
    virtual_network_name = "vnet_1"
    address_prefixes     = ["10.0.0.0/26"]
  }

  "backend_1" = {
    name                 = "backend_1"
    resource_group_name  = "Rg_moon"
    virtual_network_name = "vnet_1"
    address_prefixes     = ["10.0.0.64/26"]
  }

  "frontend_2" = {
    name                 = "frontend_2"
    resource_group_name  = "Rg_sun"
    virtual_network_name = "vnet_2"
    address_prefixes     = ["10.1.0.0/25"]
  }

  "backend_2" = {
    name                 = "backend_2"
    resource_group_name  = "Rg_sun"
    virtual_network_name = "vnet_2"
    address_prefixes     = ["10.1.0.128/25"]
  }
}

network_security_group = {
  "nsg_frontend_1" = {
    name                = "nsg_frontend_1"
    location            = "East US"
    resource_group_name = "Rg_moon"
  }
  "nsg_backend_1" = {
    name                = "nsg_backend_1"
    location            = "East US"
    resource_group_name = "Rg_moon"
  }

  "nsg_frontend_2" = {
    name                = "nsg_frontend_2"
    location            = "Central India"
    resource_group_name = "Rg_sun"
  }

  "nsg_backend_2" = {
    name                = "nsg_backend_2"
    location            = "Central India"
    resource_group_name = "Rg_sun"
  }
}

subnet_nsg_map = {
  "frontend-association" = {
    subnet_key = "frontend_1"
    nsg_key    = "nsg_frontend_1"
  }
  "backend-association" = {
    subnet_key = "backend_1"
    nsg_key    = "nsg_backend_1"
  }

    "frontend-association-2" = {
        subnet_key = "frontend_2"
        nsg_key    = "nsg_frontend_2"
    }
    "backend-association-2" = {
        subnet_key = "backend_2"
        nsg_key    = "nsg_backend_2"
    }
}


public_ip = {
  "test_public_ip" = {
    name                = "test_public_ip"
    resource_group_name = "Rg_moon"
    location            = "East US"
    allocation_method   = "Static"
  }

    "test_public_ip_2" = {
        name                = "test_public_ip_2"
        resource_group_name = "Rg_sun"
        location            = "Central India"
        allocation_method   = "Dynamic"
    }
    "bastion_public_ip" = {
        name                = "bastion_public_ip"
        resource_group_name = "Rg_moon"
        location            = "East US"
        allocation_method   = "Static"
    }
}

network_interfaces = {
  "nic-frontend-1" = {
    name                = "nic-frontend-1"
    location            = "East US"
    resource_group_name = "Rg_moon"
    subnet_key          = "frontend_1"
    ip_configuration = {
      name                          = "ipconfig1"
      private_ip_address_allocation = "Dynamic"
    }
  },
  "nic-backend-1" = {
    name                = "nic-backend-1"
    location            = "East US"
    resource_group_name = "Rg_moon"
    subnet_key          = "backend_1"
    ip_configuration = {
      name                          = "ipconfig2"
      private_ip_address_allocation = "Dynamic"
    }
  }
}

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





