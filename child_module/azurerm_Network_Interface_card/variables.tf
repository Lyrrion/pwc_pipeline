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

variable "subnet_ids" {
  description = "Map of subnet IDs keyed by subnet keys"
  type        = map(string)
  default     = {}
  
}
