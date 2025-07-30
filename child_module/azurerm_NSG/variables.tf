variable "network_security_group" {
  description = "Map of network security groups to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
   
  }))
  default = {}
}