resource "azurerm_resource_group" "myrg" {
  name     = var.rg_name
  location = var.location
}

resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}

resource "azurerm_storage_account" "example" {
  name                     = "mystorage-${random_string.random.id}"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = var.tier
  account_replication_type = var.replication_type
  account_kind             = var.kind
  min_tls_version          = "TLS1_2"
  blob_properties {
    versioning_enabled       = var.enable_versioning
    delete_retention_policy {
      days = var.retention_days
    }
  }
  tags = {
    environment = "staging"
  }
}