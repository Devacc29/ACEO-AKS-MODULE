terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.1.0"
    }
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  subscription_id                 = "c92973e5-7f67-4bc4-af10-1ed1c2f696c1"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "az-tf-str-rg-01"
    storage_account_name = "aztfstr01"
    container_name       = "terraform-state"
    key                  = "rg.terraform.tfstate"
  }
}