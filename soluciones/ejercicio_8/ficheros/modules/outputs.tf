output "vnet_name" {
  description = "Nombre de la VNET creada"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "ID de la VNET creada"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_location" {
  description = "Localización de la VNET"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "Espacio de direcciones asignado a la VNET"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_resource_group" {
  description = "Nombre del Resource Group de la VNET"
  value       = azurerm_virtual_network.vnet.resource_group_name
}

output "vnet_tags" {
  description = "Etiquetas adicionales aplicadas a la VNET"
  value       = azurerm_virtual_network.vnet.tags
}
