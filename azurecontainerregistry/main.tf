data "azurerm_resource_group" "rg" {
  name = var.resource_group
}


resource "azurerm_container_registry" "acr" {
  for_each            = var.acr_details
  name                = each.value["name"]
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  sku                 = each.value["sku"]
  admin_enabled       = each.value["admin_enabled"]
  identity {
    type = "SystemAssigned"
  }
  tags = data.azurerm_resource_group.rg.tags
}
