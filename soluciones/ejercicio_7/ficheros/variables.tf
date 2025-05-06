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
  description = "Nombre de la VNET a crear"
  nullable    = false
  type        = string
  validation {
    condition     = var.vnet_name != "" && can(regex("^vnet[a-z]{3,}tfexercise[0-9]{2,}$", var.vnet_name))
    error_message = "El nombre de la VNET no puede ser nulo o vacío y debe empezar por vnet y terminar por tfexercise seguido de un número."
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

variable "owner_tag" {
  description = "Describe el propietario de la VNET"
  type        = string
  nullable    = false
  validation {
    condition = var.owner_tag != ""
    error_message = "El owner tag no puede ser nulo o vacío."
  }
}

variable "environment_tag" {
  description = "Describe el entorno de la VNET"
  type        = string
  nullable    = false
  validation {
    condition = var.environment_tag != "" && contains(["DEV", "PRO", "PRE", "TES"], upper(var.environment_tag))
    error_message = "El environment tag no puede ser nulo o vacío y tiene que ser (DEV, PRO, PRE, TES)."
  }
}

variable "vnet_tags" {
  description = "Etiquetas de la VNET"
  type        = map(string)
  nullable    = false
  default     = {}
  validation {
    condition     = alltrue([for val in values(var.vnet_tags) : val != ""])
    error_message = "El mapa de etiquetas no puede ser nulo o vacío."
  }
}

variable "subnets" {
  description = "Lista de subnets a crear"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = []
}