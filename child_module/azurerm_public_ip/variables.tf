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