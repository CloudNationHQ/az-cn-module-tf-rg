# resourcegroups
resource "azurerm_resource_group" "groups" {
  for_each = var.groups

  name     = each.value.name
  location = each.value.region
}

# locks
resource "azurerm_management_lock" "lock" {
  for_each = {
    for k, v in var.groups : k => v if v.management_lock != null
  }
  name       = "lock-${each.key}"
  scope      = azurerm_resource_group.groups[each.key].id
  lock_level = each.value.management_lock.level
  notes      = try(each.value.management_lock.notes, null)
}
