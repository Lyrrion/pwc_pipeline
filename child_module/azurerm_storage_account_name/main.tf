resource "azurerm_storage_account" "market-stg" {
    for_each = var.storage_account
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_replication_type = each.value.account_replication_type
    account_tier = each.value.account_tier
    public_network_access_enabled = each.value.public_network_access_enabled
    min_tls_version = each.value.min_tls_version  
}
    




  
