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