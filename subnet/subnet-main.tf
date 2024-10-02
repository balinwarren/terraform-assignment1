resource "azurerm_resource_group" "rg01" {
  name     = var.resource_group_name
  location = "West US 3"
}

resource "azurerm_virtual_network" "example_vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = "West US 3"
  resource_group_name = resource.azurerm_resource_group.rg01.name
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = resource.azurerm_resource_group.rg01.name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_CIDR
}

output "sub_id" {
  value = azurerm_subnet.example.id
}
