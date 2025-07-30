variable "bastion_host" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    public_ip_key       = string
    ip_configuration = object({
      name = string
    })
  }))
}

variable "subnet_ids" {
  description = "Map of subnet name to subnet ID"
  type        = map(string)
}

variable "public_ip_ids" {
  description = "Map of public IP name to public IP ID"
  type        = map(string)
}


