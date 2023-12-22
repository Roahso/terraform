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
  tenant_id = "5c1d6b91-375b-405c-9202-c560e8e34045"
}

data "azurerm_resource_group" "sandbox_rg" {
  name = "github_group_12212226"
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
