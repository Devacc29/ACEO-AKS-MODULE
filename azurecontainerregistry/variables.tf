variable "resource_group" {}

variable "acr_details" {
  type = map(object({
    name          = string
    sku           = string
    admin_enabled = bool
  }))
}