provider "azurerm" {
  features {}
}

module "groups" {
  source = "../"

  environment = var.environment

  groups = {
    demo = { region = "westeurope" }
  }
}
