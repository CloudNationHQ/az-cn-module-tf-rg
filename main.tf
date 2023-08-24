# resourcegroups
resource "azurerm_resource_group" "groups" {
  for_each = var.groups

  name     = each.value.name
  location = each.value.region
}
