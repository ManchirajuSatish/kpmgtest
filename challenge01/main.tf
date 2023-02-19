/*
##########   CHALLENGE 01 - KPMG TEST
A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these
resources on a cloud environment (Azure/AWS/GCP). Please remember we will not be judged
on the outcome but more focusing on the approach, style and reproducibility.
*/


resource "azurerm_resource_group" "devrg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space

  depends_on = [
    azurerm_resource_group.devrg
  ]
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefixes"]

  depends_on = [
    azurerm_virtual_network.vnet
  ]
}