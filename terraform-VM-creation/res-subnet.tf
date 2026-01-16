# resource "azurerm_subnet" "subnet" {
#   count                = length(var.subnet_prefix8)
#   name                 = var.subnet_prefix8[count.index].name
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = var.vnet_name_sanadi
#   address_prefixes     = var.subnet_prefix8[count.index].subnet_prefixes
#   depends_on           = [azurerm_virtual_network.vnet]
# }

resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_prefix8)
  name                 = var.subnet_prefix8[count.index].name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet-suraj.name
  address_prefixes     = var.subnet_prefix8[count.index].address_prefixes

}

variable "subnet_prefix8" {
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))

  default = [
    {
      name             = "surajsubnet-1"
      address_prefixes = ["10.8.7.0/24"]
    },
    {
      name             = "surajsubnet-2"
      address_prefixes = ["10.8.8.0/24"]
    }
  ]
}
