cprovider "azurerm" {
  features {}
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "location" {
  description = "Location for the storage account"
  type        = string
  default     = "East US"
}

variable "sku" {
  description = "The SKU of the storage account"
  type        = string
  default     = "Standard_LRS"
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.sku

  tags = {
    environment = "Terraform"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}