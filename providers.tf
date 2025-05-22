terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "experimentRg"
    storage_account_name = "datalakeattachedwithsyn"
    container_name      = "tfstate"
    key                 = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7a7e208c-729b-401b-8721-1518ebc2e381"
}
