resource "azurerm_storage_account" "github_actions_sa" {
  name                     = "githubactions"
  resource_group_name      = data.sandbox_rg.name
  location                 = data.sandbox_rg.location
  account_tier             = "Premium"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "terraformstate"
  storage_account_name  = azurerm_storage_account.github_actions_sa.name
  container_access_type = "private"
}
