provider "azurerm" {
  features {}
}

module "vnet-roy1" {
  source = "git::https://github.com/stemdo-labs/terraform-exercises-rllunarST.git//soluciones/ejercicio_5/ficheros/modules?ref=soluciones-rllm"

  vnet_name                    = var.vnet_name
  vnet_address_space           = var.vnet_address_space
  owner_tag                    = var.owner_tag
  environment_tag              = var.environment_tag
  existent_resource_group_name = var.existent_resource_group_name
  location                     = var.location
  vnet_tags                    = var.vnet_tags
}