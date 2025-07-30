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