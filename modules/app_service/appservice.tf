

# 1. App Service Plan (FREE: F1)
resource "azurerm_service_plan" "asp" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location

  os_type  = "Linux"       # o "Windows" si prefieres
  sku_name = "F1"          # FREE tier
}

# 2. App Service (Web App)
resource "azurerm_linux_web_app" "app" {
  name                = var.web_app_name # debe ser único en Azure
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false
    application_stack {
      node_version = "18-lts" # ejemplo; puedes cambiarlo
    }
  }

  https_only = true
}