resource "azurerm_resource_group" "ACRRG" {
  name     = "containerRG"
  location = "West US"
}

resource "azurerm_container_registry" "TerraformContr_Reg" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.ACRRG.name
  location            = azurerm_resource_group.ACRRG.location
  sku                 = var.acr_sku
  tags                = var.tags
}
