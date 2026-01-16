resource "azurerm_ssh_public_key" "ssh-ss" {
  name                = "ssh-ss"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  #public_key          = file("~/.ssh/id_rsa.pub")
  public_key          = file("C:/Users/Suri/.ssh/id_rsa.pub")
}

