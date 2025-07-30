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