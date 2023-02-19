/*
##########   CHALLENGE 02 - KPMG TEST
We need to write code that will query the meta data of an instance within AWS or Azure or GCP
and provide a json formatted output.
The choice of language and implementation is up to you.
*/

/*
The output can be run to create it in a json format by using command "terraform output -json" and to save the output in a json file, the command is "terraform output > output.json"
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