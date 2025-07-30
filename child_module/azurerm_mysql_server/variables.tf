variable "mssql_servers" {
  description = "Map of MSSQL servers to create"
  type = map(object({
    name                         = string
    location                     = string
    resource_group_name          = string
    administrator_login          = string
    administrator_login_password = string
  }))
  default = {}
  
}