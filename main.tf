# Create a Resource Group
resource azurerm_resource_group main {
  name     = "rg-${replace(var.name," ","")}"
  location = var.location
}

# Assign contributor role to this Resource Group
resource azurerm_role_assignment main {
  count                = length(var.contributors)
  scope                = azurerm_resource_group.main.id
  role_definition_name = "Contributor"
  principal_id         = element(var.contributors, count.index)
}