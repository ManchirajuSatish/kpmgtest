output "subnet_ids" {
  value = {
    for id in keys(var.subnets) : id => azurerm_subnet.subnet[id].id
  }
}

output "rg_name" {
  value = azurerm_resource_group.devrg.name
}

output "vnet_id" { 
  value = azurerm_virtual_network.vnet.id  
}

