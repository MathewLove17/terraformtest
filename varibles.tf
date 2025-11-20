variable "resource_group_name" {
  type    = string
  default = "rg-demo-modulos"
}

variable "location" {
  type    = string
  default = "westeurope"
}

# App Service
variable "app_service_plan_name" {
  type    = string
  default = "appserviceplan"
}

variable "web_app_name" {
  type    = string
  default = "appservicedemo"
}

variable "node_version" {
  type    = string
  default = "18-lts"
}

# VM
variable "vm_name" {
  type    = string
  default = "anabohuelo"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_password" {
  type        = string
  description = "Password del usuario admin de la VM Windows"
  sensitive   = true
}