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

variable "nic_ids" {
  description = "Map of NIC name to NIC ID"
  type        = map(string)
}