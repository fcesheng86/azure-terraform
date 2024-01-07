# Azure Provider source and version being used
terraform {
  # backend "azurerm" {
  #   resource_group_name  = "nic-tfstate-rg"
  #   storage_account_name = "nictfstate010724"
  #   container_name       = "tfstate"
  #   key                  = "prod.terraform.tfstate"
  # }
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
  # subscription_id = var.subscription_id
  # client_id       = var.client_id
  # client_secret   = var.client_secret
  # tenant_id       = var.tenant_id

}

provider "azuread" {
  # Configuration options
}

provider "azapi" {

}
