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