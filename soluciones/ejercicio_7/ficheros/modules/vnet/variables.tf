variable "resource_group_name" {
  description = "Nombre del Resource Group ya existente en Azure"
  type        = string
}

variable "create_resource_group" {
  description = "Indica si se debe crear un nuevo Resource Group"
  type        = bool
  default     = false
}

variable "vnet_name" {
  description = "Nombre del Resource Group donde crear la VNet y las subnets"
  nullable    = false
  type        = string
}

variable "owner_tag" {
  description = "Describe el propietario de la VNET"
  type        = string
  nullable    = false
  validation {
    condition = var.owner_tag != ""
    error_message = "El owner tag no puede ser nulo o vacío."
  }
}

variable "address_space" {
  description = "Espacio de direcciones de la VNET"
  type        = list(string)
}

variable "location" {
  description = "Localización del despligue de la VNET"
  type        = string
  default     = "West Europe"
}

variable "tags" {
  description = "Etiquetas comunes para los recursos"
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "Lista de subnets a crear"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = []
}
