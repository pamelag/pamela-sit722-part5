#
# Creates a resource group for Books & Inventories APIs in Cloudlab Azure account
#
resource "azurerm_resource_group" "bookmgmt" {
  name     = var.app_name
  location = var.location
}