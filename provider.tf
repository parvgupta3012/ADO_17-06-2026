terraform {
    required_providers {
        azurerm = {
             source = "hashicorp/azurerm"
             version = "4.76.0"
        }
    }
    backend "azurerm" {
        resource_group_name = "parveen-rg1"
        storage_account_name = "remotestoraccparveen"
        container_name = "remote-conatiner-parveen"
        key             = "parveen.tfstate"  
    }
}

provider "azurerm" {
    features {}
    subscription_id = "ad260aed-6495-48f9-bbbb-54f0f48091e9"
}
