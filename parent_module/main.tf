module "rg_creation" {
  source         = "../child_module/azurerm_resource_group"
  resource_group = var.resource_group
}

module "stg_creation" {
  depends_on = [ module.rg_creation ]
  source          = "../child_module/azurerm_storage_account_name"
  storage_account = var.storage_account

}

module "virtual_network_creation" {
  depends_on = [ module.rg_creation ]
  source          = "../child_module/azurerm_virtual_network"
  virtual_network = var.virtual_network
}

module "subnet_creation" {
  depends_on = [ module.virtual_network_creation ]
  source = "../child_module/azurerm_subnet"
  subnet = var.subnet
}

module "nsg_creation" {
  depends_on = [ module.rg_creation, module.virtual_network_creation , module.subnet_creation ]
  source                 = "../child_module/azurerm_NSG"
  network_security_group = var.network_security_group
}

output "subnet_ids" {
  value = module.subnet_creation.subnet_ids
}

output "nsg_ids" {
  value = module.nsg_creation.nsg_ids
}


resource "azurerm_subnet_network_security_group_association" "nsg_assoc" {
  depends_on = [ module.subnet_creation, module.nsg_creation ]
  for_each = var.subnet_nsg_map
  subnet_id = module.subnet_creation.subnet_ids[each.value.subnet_key]
  network_security_group_id = module.nsg_creation.nsg_ids[each.value.nsg_key]
}

module "public_ip_creation" {
    depends_on = [ var.public_ip, module.subnet_creation, module.nsg_creation ]
  source     = "../child_module/azurerm_public_ip"
  public_ip = var.public_ip
  
}

module "nic_creation" {

  source              =  "../child_module/azurerm_Network_Interface_card"
  network_interfaces  =   var.network_interfaces
  subnet_ids          = module.subnet_creation.subnet_ids

}


module "named_virtual_machine" {
  depends_on = [ module.nic_creation, module.public_ip_creation ]
  source              = "../child_module/azurerm_virtual-machine"
  virtual_machines   = var.virtual_machines
  nic_ids            = module.nic_creation.nic_ids
  
}



