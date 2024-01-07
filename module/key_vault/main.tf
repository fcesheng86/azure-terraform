resource "azurerm_key_vault" "example" {
  name                        = var.kv_name
  location                    = var.kv_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  tags                        = var.tags

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}

# resource "azurerm_monitor_diagnostic_setting" "kv_diagnostic" {
#   name                       = "akv_to_workspace"
#   target_resource_id         = azurerm_key_vault.example.id
#   log_analytics_workspace_id = azurerm_log_analytics_workspace.test_workspace.id

#   enabled_log {
#     category = "AuditEvent"
#   }

#   metric {
#     category = "AllMetrics"

#   }
# }
