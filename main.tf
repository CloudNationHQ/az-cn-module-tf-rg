# resourcegroups
resource "azurerm_resource_group" "groups" {
  for_each = var.groups

  name     = "rg-${each.key}-${var.environment}${var.suffix != "" ? "-${var.suffix}" : ""}"
  location = each.value.region
}
