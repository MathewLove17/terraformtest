terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
 
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7611af88-27c6-4d0c-b3e2-ce8f0274ce43"
}

# Resource Group común
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Módulo App Service
module "app_service" {
  source = "./modules/app_service"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  app_service_plan_name = var.app_service_plan_name
  web_app_name          = var.web_app_name
  node_version          = var.node_version
  
} 

# Módulo VM
module "vm" {
  source = "./modules/vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}

# añado comentarios para ver si funciona el action sdfas