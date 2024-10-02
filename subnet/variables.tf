variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_CIDR" {
  type        = list(string)
  description = "Address prefixes for the subnet"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
