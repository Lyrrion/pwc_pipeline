terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg_sujit_stg_backup"
    storage_account_name = "stg0sujitstatefilebackup"
    container_name       = "stg-container"
    key                  = "tfstatefile"
  }
}


provider "azurerm" {
  features {}
  subscription_id = "48959946-2f7e-4d0f-8c80-ed7b8706e6c3"
  tenant_id       = "9a897b62-1e0e-4561-8a50-b8728a8b54da"

}