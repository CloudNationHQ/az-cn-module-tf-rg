provider "azurerm" {
  features {}
}

module "groups" {
  source = "../"

  environment = var.environment

  groups = {
    assetg = { region = "eastus" }
  }
}
