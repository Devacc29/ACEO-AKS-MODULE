output "acr_name" {
  value = [for a in azurerm_container_registry.acr : a.name]
}

output "acr_id" {
  value = { for a in azurerm_container_registry.acr : a.name => a.id }
}

output "acr_admin_username" {
  value = [for a in azurerm_container_registry.acr : a.admin_username]
}

output "acr_admin_password" {
  value = [for a in azurerm_container_registry.acr : a.admin_password]
}

output "acr_login_server" {
  value = [for a in azurerm_container_registry.acr : a.login_server]
}
