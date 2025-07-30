variable "resource_group" {
  description = "This is code for resource group"
  type = map(object({
    name     = string
    location = string
  }))
}


variable "storage_account" {
  description = "This is code for storage_account"
  type = map(object({
    name                          = string
    resource_group_name           = string
    location                      = string
    account_replication_type      = string
    account_tier                  = string
    public_network_access_enabled = bool
    min_tls_version               = string
    allow_blob_public_access      = optional(bool, false)
  }))
}


variable "virtual_network" {
  description = "Map of virtual networks to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = list(string)
  }))
  default = {}

}

variable "subnet" {
  description = "Map of subnets to create"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  default = {}
}

variable "network_security_group" {
  description = "Map of network security groups to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

  }))
  default = {}
}

variable "subnet_nsg_map" {
  description = "Map of NSG to Subnet associations"
  type = map(object({
    subnet_key = string
    nsg_key    = string
  }))
}

variable "public_ip" {
  description = "Map of public IPs to create"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
  default = {}
  
}

variable "network_interfaces" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    ip_configuration = object({
      name                          = string
      private_ip_address_allocation = string
    })
  }))
}

variable "virtual_machines" {
  description = "Map of VMs to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    nic_key             = string
    vm_size             = string
    admin_username      = string
    admin_password      = string
    os_disk_name        = string
    image_publisher     = string
    image_offer         = string
    image_sku           = string
    image_version       = string
  }))
}

variable "mssql_servers" {
    description = "Map of MSSQL servers to create"
    type = map(object({
        name                = string
        resource_group_name = string
        location            = string
        administrator_login = string
        administrator_login_password = string
    }))
    default = {}
  
}


