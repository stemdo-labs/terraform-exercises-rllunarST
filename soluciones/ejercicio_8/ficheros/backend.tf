terraform {
  backend "azurerm" {
    resource_group_name  = "rg-rllunar-dvfinlab"
    storage_account_name = "starllunardvfinlab"
    container_name       = "tfstaterllunar"
    key                  = "dev.terraform.tfstate"
  }
}