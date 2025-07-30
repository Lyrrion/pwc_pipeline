variable "subnet_nsg_map" {
  description = "Map of NSG to Subnet associations"
  type = map(object({
    subnet_key = string
    nsg_key    = string
  }))
}
