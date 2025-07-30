  storage_account = {
    stg_1 = {
    name = "storage78542365"
    resource_group_name = "Rg_moon"
    location = "East US"
    account_replication_type = "ZRS"
    account_tier = "Standard"
    public_network_access_enabled = false
    min_tls_version = "TLS1_2"
    allow_blob_public_access = false
    }

    stg_2= {
    name = "storage78542384"
    resource_group_name = "Rg_sun"
    location = "Central India"
    account_replication_type = "LRS"
    account_tier = "Standard"
    public_network_access_enabled = true
    min_tls_version = "TLS1_2"
    allow_blob_public_access = true
    }
  }
 