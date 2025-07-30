variable "key_vaults" {
    description = "Map of Key Vaults to create"
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
    }))
    default = {}
  
}

