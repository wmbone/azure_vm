// OUTPUT

output "resource_group_name" {
    value = azurerm_resource_group.main.name
}

output "virtual_network_name" {
    value = azurerm_virtual_network.main.name
}

output "azurerm_public_ip" {
    value = azurerm_lb.example.frontend_ip_configuration
}

output "netrok_interface" {
    value = azurerm_resource_group.main.name
}