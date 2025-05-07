provider "azurerm" {
  features {}
}
 
import {
  to = azurerm_network_security_group.imported_nsg
  id = "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab/providers/Microsoft.Network/networkSecurityGroups/nsg-rllunar-dvfinlab"
}