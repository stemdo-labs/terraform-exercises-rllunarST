# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab"
resource "azurerm_resource_group" "rg_existing" {
  location   = "westeurope"
  managed_by = null
  name       = "rg-rllunar-dvfinlab"
  tags = {
    description = "Environment for the final exercise of the DevOps Bootcamp 2024-06"
    environment = "lab"
    owner       = "DevOps Bootcamp 202406"
  }
}

# __generated__ by Terraform from "/subscriptions/86f76907-b9d5-46fa-a39d-aff8432a1868/resourceGroups/rg-rllunar-dvfinlab/providers/Microsoft.KeyVault/vaults/akv-rllunar-dvfinlab"
resource "azurerm_key_vault" "kv_existing" {
  access_policy = [{
    application_id          = ""
    certificate_permissions = []
    key_permissions         = ["List", "Create", "Delete", "Get", "Purge", "Recover", "Update", "GetRotationPolicy", "SetRotationPolicy"]
    object_id               = "1a4452e4-bbd1-4c4e-abbc-d6a6cc440481"
    secret_permissions      = ["Set", "Delete", "Get", "List", "Purge", "Recover", "Backup", "Restore"]
    storage_permissions     = []
    tenant_id               = "2835cee8-01b5-4561-b27c-2027631bcfe1"
    }, {
    application_id          = ""
    certificate_permissions = ["Backup", "Create", "Delete", "DeleteIssuers", "Get", "GetIssuers", "Import", "List", "ListIssuers", "ManageContacts", "ManageIssuers", "Purge", "Recover", "Restore", "SetIssuers", "Update"]
    key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
    object_id               = "95dcb076-cc08-492b-bd81-a3f9ef507be4"
    secret_permissions      = ["Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
    storage_permissions     = []
    tenant_id               = "2835cee8-01b5-4561-b27c-2027631bcfe1"
  }]
  enable_rbac_authorization       = false
  enabled_for_deployment          = false
  enabled_for_disk_encryption     = true
  enabled_for_template_deployment = false
  location                        = "westeurope"
  name                            = "akv-rllunar-dvfinlab"
  public_network_access_enabled   = true
  purge_protection_enabled        = false
  resource_group_name             = "rg-rllunar-dvfinlab"
  sku_name                        = "standard"
  soft_delete_retention_days      = 7
  tags = {
    description = "Environment for the final exercise of the DevOps Bootcamp 2024-06"
    environment = "lab"
    owner       = "DevOps Bootcamp 202406"
  }
  tenant_id = "2835cee8-01b5-4561-b27c-2027631bcfe1"
  network_acls {
    bypass                     = "AzureServices"
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
}

# __generated__ by Terraform
resource "azurerm_storage_account" "st_existing" {
  access_tier                       = "Hot"
  account_kind                      = "StorageV2"
  account_replication_type          = "LRS"
  account_tier                      = "Standard"
  allow_nested_items_to_be_public   = true
  allowed_copy_scope                = null
  cross_tenant_replication_enabled  = true
  default_to_oauth_authentication   = false
  dns_endpoint_type                 = "Standard"
  edge_zone                         = null
  https_traffic_only_enabled        = true
  infrastructure_encryption_enabled = false
  is_hns_enabled                    = false
  large_file_share_enabled          = false
  local_user_enabled                = true
  location                          = "westeurope"
  min_tls_version                   = "TLS1_2"
  name                              = "starllunardvfinlab"
  nfsv3_enabled                     = false
  public_network_access_enabled     = true
  queue_encryption_key_type         = "Service"
  resource_group_name               = "rg-rllunar-dvfinlab"
  sftp_enabled                      = false
  shared_access_key_enabled         = true
  table_encryption_key_type         = "Service"
  tags = {
    description = "Environment for the final exercise of the DevOps Bootcamp 2024-06"
    environment = "lab"
    owner       = "DevOps Bootcamp 202406"
  }
  blob_properties {
    change_feed_enabled           = false
    default_service_version       = null
    last_access_time_enabled      = false
    versioning_enabled            = false
  }
  share_properties {
    retention_policy {
      days = 7
    }
  }
}
