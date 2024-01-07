module "kv_module" {
  source              = "./module/key_vault"
  kv_name             = "testkvmodule-0107"
  kv_location         = "eastus"
  resource_group_name = azurerm_resource_group.sample_rg.name
  tags = {
    created_by = "Terraform"
    module     = true
  }
  // other parameters...

}
