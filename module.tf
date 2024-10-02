terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "sub1" {
  source              = "./subnet"
  vnet_address_space  = ["10.0.0.0/16"]
  subnet_name         = "sub1"
  subnet_CIDR         = ["10.0.1.0/24"]
  resource_group_name = "rg01"
  vnet_name           = "example-network"
}
