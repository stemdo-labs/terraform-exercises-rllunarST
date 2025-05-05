provider "azurerm" {
  features {}
}

module "vnet-roy1" {
  source = "./modules"

  vnet_name                    = var.vnet_name
  vnet_address_space           = var.vnet_address_space
  owner_tag                    = var.owner_tag
  environment_tag              = var.environment_tag
  existent_resource_group_name = var.existent_resource_group_name
  location                     = var.location
  vnet_tags                    = var.vnet_tags
}