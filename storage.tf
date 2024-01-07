# resource "random_string" "storage_suffix" {
#   length  = 4
#   special = false
#   upper   = false
# }

# resource "azurerm_storage_account" "mystorage" {
#   name                     = "mystorage${random_string.storage_suffix.result}"
#   resource_group_name      = azurerm_resource_group.sample_rg.name
#   location                 = "southeastasia"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

# resource "azapi_update_resource" "storage_update" {
#   type        = "Microsoft.Storage/storageAccounts@2022-09-01"
#   resource_id = azurerm_storage_account.mystorage.id

#   body = jsonencode({
#     properties = {
#       sasPolicy = {
#         expirationAction    = "Log"
#         sasExpirationPeriod = "10.01:10:30"
#       }
#     }
#   })

# }
