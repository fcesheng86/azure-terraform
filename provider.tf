# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=2.47.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "1.11.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  client_id = "af12f5d3-03b4-4705-8af6-67904a024bf5"

}

provider "azuread" {
  # Configuration options
}

provider "azapi" {

}
