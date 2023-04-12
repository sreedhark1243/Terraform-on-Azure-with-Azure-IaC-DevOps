# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = " = 2.72.0"        //we are using this "= 2.72.0" due to not accepting "backend_address_pool_id"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
#we are keeping the below space blank as we are passing this at run time with environment specific.
  backend "azurerm" {
    
  }   
}

# Provider Block
provider "azurerm" {
 features {}          
}


