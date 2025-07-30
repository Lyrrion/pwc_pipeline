resource "azurerm_mssql_server" "this" {
  for_each = var.mssql_servers
  name                         = each.value.name
  location                     = each.value.location
  resource_group_name          = each.value.resource_group_name
  version                      = "12.0"
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
  minimum_tls_version          = "1.2"
}
