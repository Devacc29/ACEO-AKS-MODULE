data "azurerm_resource_group" "rg" {
  name = var.resource_group
}

resource "azurerm_storage_account" "str" {
  for_each                 = var.str_details
  name                     = each.value["str_account_name"]
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = each.value["account_tier"]
  account_replication_type = each.value["account_replication_type"]
  tags                     = data.azurerm_resource_group.rg.tags
}

resource "azurerm_storage_container" "cnt" {
  for_each              = var.str_details
  name                  = each.value["container_name"]
  storage_account_name  = each.value["str_account_name"]
  container_access_type = "private"
  depends_on = [
    azurerm_storage_account.str
  ]
}