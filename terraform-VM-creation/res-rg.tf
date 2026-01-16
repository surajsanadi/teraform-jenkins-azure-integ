variable "location" {
  default = "korea central"
  type    = string
}
variable "rg_name" {
  default = "surajABC"
  type    = string
}

resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.rg_name
}
