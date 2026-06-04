# Creted the azure storage account static web feature to host the static react javascript website


resource "azurerm_resource_group" "rg-block" {
  name = "rg1"
  location = "eastus"
}

resource "azurerm_storage_account" "storage-block" {
  name                     = "reactstorage123"
  resource_group_name      = azurerm_resource_group.rg-block.name
  location                 = azurerm_resource_group.rg-block.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document = "index.html"
    error_404_document = "index.html"
  }
}
