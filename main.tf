resource "azurerm_resource_group" "sample_rg" {
  name     = "myrg"
  location = "eastus"
}

# resource "azurerm_virtual_network" "test_vnet" {
#   name                = "testvnet1"
#   location            = "eastus"
#   address_space       = ["192.168.0.0/26"]
#   resource_group_name = azurerm_resource_group.sample_rg.name
#   dns_servers         = []
# }

# resource "azurerm_subnet" "subnet1" {
#   name                 = "subnet1"
#   virtual_network_name = azurerm_virtual_network.test_vnet.name
#   resource_group_name  = azurerm_resource_group.sample_rg.name
#   address_prefixes     = ["192.168.0.0/27"]
# }
