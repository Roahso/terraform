terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.85.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_msi = true
  tenant_id = "6dd8b6a1-6749-4de3-a27e-3fd3484c6da7"
}

data "azurerm_resource_group" "sandbox_rg" {
  name = "RG-IT-SANDBOX-002-GITHUB-001"
}



/*
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "abcd1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
    use_msi              = true
    subscription_id      = "00000000-0000-0000-0000-000000000000"
    tenant_id            = "00000000-0000-0000-0000-000000000000"
  }
*/
