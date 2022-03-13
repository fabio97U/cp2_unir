# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
# crea un service principal y rellena los siguientes datos para autenticar
provider "azurerm" {
  features {}
  subscription_id = "1093f016-6a0c-4f04-9574-c416a7ae8952"
  client_id       = "e05c9152-0d44-47f9-9210-786a7a011286" # se obtiene al crear el service principal
  client_secret   = "7Dxbv7TVVLLRfnBh6o5C1BvMJ97tq__eIh"   # se obtiene al crear el service principal
  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440" # se obtiene al crear el service principal
}
