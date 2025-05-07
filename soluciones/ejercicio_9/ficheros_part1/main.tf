provider "azurerm" {
  features {}
}

import {
  to = azurerm_resource_group.rg_existing
  id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab"
}

import {
  to = azurerm_key_vault.kv_existing
  id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab/providers/Microsoft.KeyVault/vaults/akv-rllunar-dvfinlab"
}

import {
  to = azurerm_storage_account.st_existing
  id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab/providers/Microsoft.Storage/storageAccounts/starllunardvfinlab"
}
