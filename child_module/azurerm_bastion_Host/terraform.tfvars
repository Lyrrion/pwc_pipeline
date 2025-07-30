bastion_host = {
  "bastion-east" = {
    name                = "bastion-east"
    location            = "East US"
    resource_group_name = "rg-bastion"
    subnet_key          = "AzureBastionSubnet"
    public_ip_key       = "pip-east"

    ip_configuration = {
      name = "bastion-config"
    }
  }
}
