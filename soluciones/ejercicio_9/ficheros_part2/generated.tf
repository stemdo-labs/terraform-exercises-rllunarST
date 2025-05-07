# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab/providers/Microsoft.Network/networkSecurityGroups/nsg-rllunar-dvfinlab"
resource "azurerm_network_security_group" "imported_nsg" {
  location            = "eastus"
  name                = "nsg-rllunar-dvfinlab"
  resource_group_name = "rg-rllunar-dvfinlab"
  security_rule       = []
  tags                = {}
}
