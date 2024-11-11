output "str_name" {
  value = [for s in azurerm_storage_account.str : s.name]
}

