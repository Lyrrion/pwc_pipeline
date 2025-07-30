resource "azurerm_key_vault" "vault_1" {
    for_each = var.key_vaults
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = "9a897b62-1e0e-4561-8a50-b8728a8b54da"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"
}