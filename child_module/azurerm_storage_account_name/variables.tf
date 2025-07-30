variable "storage_account" {
    description = "This is code for storage_account" 
    type = map(object({
    name = string
    resource_group_name = string
    location = string
    account_replication_type = string
    account_tier = string
    public_network_access_enabled = bool
    min_tls_version = string
    allow_blob_public_access = optional(bool, false)
    }))
}