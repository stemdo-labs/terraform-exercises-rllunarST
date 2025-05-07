provider "azurerm" {
  features {}
}

module "vnet-roy1" {
  source                = "./modules/vnet"
  vnet_name             = var.vnet_name
  resource_group_name   = var.resource_group_name
  create_resource_group = var.create_resource_group
  location              = var.location
  owner_tag             = var.owner_tag
  address_space         = var.address_space

  tags = var.vnet_tags

  subnets = var.subnets
}
