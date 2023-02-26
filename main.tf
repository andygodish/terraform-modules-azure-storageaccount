resource "azurerm_storage_account" "storage_account" {
  name                          = "sa${var.project_group}${var.project_name}${var.project_env}${var.primary_location_abbr}"
  resource_group_name           = var.rg_name
  location                      = var.primary_location
  account_tier                  = "Standard"
  account_replication_type      = "RAGRS"
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags
}

resource "azurerm_storage_container" "photo_upload" {
  name = "photo-upload"
  storage_account_name = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}