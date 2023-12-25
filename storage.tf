resource "random_string" "storage_suffix" {
  length  = 4
  special = false
  upper   = false
}

resource "azurerm_storage_account" "mystorage" {
  name                     = "mystorage${random_string.storage_suffix.result}"
  resource_group_name      = azurerm_resource_group.sample_rg.name
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}