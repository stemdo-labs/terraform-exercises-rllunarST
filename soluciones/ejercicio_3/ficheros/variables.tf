variable "existent_resource_group_name" {
  description = "Nombre del Resource Group ya existente en Azure"
  type        = string
}

variable "vnet_name" {
  description = "Nombre de la VNET a crear"
  type        = string
}

variable "vnet_address_space" {
  description = "Espacio de direcciones de la VNET"
  type        = list(string)
}

variable "location" {
  description = "Localización del despligue de la VNET"
  type        = string
  default     = "West Europe"
}

variable "owner_tag" {
  description = "Describe el propietario de la VNET"
  type        = string
}

variable "environment_tag" {
  description = "Describe el entorno de la VNET"
  type        = string
}

variable "vnet_tags" {
  description = "Etiquetas de la VNET"
  type        = map(string)
  default     = {}
}