resource "azurerm_virtual_network" "vnet-suraj" {
  name                = var.vnet_name_sanadi
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space
}
variable "address_space" {
  default = ["10.8.0.0/16"]
  type    = list(string)
}
variable "vnet_name_sanadi" {
  default = "tf_vnet_suraj"
  type    = string
}

# resource "azurerm_subnet" "subnet_ss" {
#   name                 = var.subnet_name
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = azurerm_virtual_network.vnet-suraj.name
#   address_prefixes     = var.address_prefixes
# depends_on = [
#     azurerm_virtual_network.vnet-suraj
#   ]
# }
# variable "address_prefixes" {
#   default = ["10.8.1.0/24"]
#   type    = list(string)
# }

# variable "subnet_name" {
#   default = "tf_subnet_suraj"
#   type    = string
# }