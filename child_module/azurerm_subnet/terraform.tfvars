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

  "bastion_subnet" = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "Rg_moon"
    virtual_network_name = "vnet_1"
    address_prefixes     = ["10.0.1.0/24"]
}
}