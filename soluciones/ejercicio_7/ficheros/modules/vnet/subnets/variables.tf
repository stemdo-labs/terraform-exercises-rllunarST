variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}

variable "vnet_name" {
  description = "Nombre de la Subnet a crear"
  nullable    = false
  type        = string
}

variable "virtual_network_name" {
  type = string
}

variable "resource_group_name" {
  description = "Nombre del Resource Group ya existente en Azure"
  type        = string
}