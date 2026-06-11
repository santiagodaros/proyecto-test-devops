terraform {
required_version = ">= 1.3.0"
required_providers {
azurerm = {
source = "hashicorp/azurerm"
version = "~> 3.0"
}
}
}

provider "azurerm" {
features {}
}

variable "environment" {
description = "Ambiente de despliegue"
type        = string
default = "dev"
}

variable "location" {
description = "Region de Azure donde se crea el recurso"
type = string
default="eastus"
}

variable "project_name" {
description = "Nombre del proyecto"
type=string
default="test-devops"
}

resource "azurerm_resource_group" "main" {
name = "rg-${var.project_name}-${var.environment}"
location = var.location
tags = {
environment=var.environment
project=var.project_name
managed_by="terraform"
}
}

output "resource_group_name" {
description = "Nombre del resource group creado"
value = azurerm_resource_group.main.name
}

output "resource_group_id" {
description = "ID del resource group creado"
value=azurerm_resource_group.main.id
}
