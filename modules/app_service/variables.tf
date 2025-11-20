variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group"
  default     = "rg-appservice-free"
}

variable "location" {
  type        = string
  description = "Región donde se desplegarán los recursos"
  default     = "westeurope"
}

variable "app_service_plan_name" {
  type        = string
  description = "Nombre del App Service Plan"
  default     = "asp-free-plan"
}

variable "web_app_name" {
  type        = string
  description = "Nombre de la Web App"
  default     = "mi-appservice-free-demo"
}

variable "node_version" {
  type        = string
  description = "Versión de Node"
  default     = "18-lts"
}