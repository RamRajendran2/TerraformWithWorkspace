resource "random_string" "name" {
  length  = 8
  special = false
  upper   = false
  lower   = true
  numeric = false
}

resource "azurerm_resource_group" "tf-learn-rg" {
  location = var.resource_group_location
  name     = "${var.prefix}-rg"
  tags = {
    "env" : "${var.prefix}"
  }
}
resource "azurerm_storage_account" "tf-learn-sa" {
  name                            = "${var.prefix}store${random_string.name.result}"
  resource_group_name             = azurerm_resource_group.tf-learn-rg.name
  location                        = azurerm_resource_group.tf-learn-rg.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  account_kind                    = "StorageV2"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
}