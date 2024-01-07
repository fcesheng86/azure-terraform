resource "azurerm_log_analytics_workspace" "test_workspace" {
  name                = "sample-workspace"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.sample_rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
