variable "resource_group" {}

variable "str_details" {
  type = map(object({
    str_account_name         = string
    account_tier             = string
    account_replication_type = string
    container_name           = string
  }))
}