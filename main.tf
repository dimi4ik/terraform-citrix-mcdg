resource "citrix_machine_catalog" "example_manual_non_power_managed_mtsession" {
  name              = var.citrix_machine_catalog_name
  description       = var.citrix_machine_catalog_description
  zone              = var.citrix_machine_catalog_zone
  allocation_type   = "Random"
  session_support   = "MultiSession"
  is_power_managed  = false
  is_remote_pc      = false
  provisioning_type = "Manual"
  machine_accounts = [
    {
      machines = [
        {
          machine_account = var.citrix_machine_catalog_account
        }
      ]
    }
  ]
}

resource "citrix_delivery_group" "example_delivery_group" {
  name        = var.delivery_group_name
  description = var.delivery_group_description
  associated_machine_catalogs = [
    {
      machine_catalog = citrix_machine_catalog.example_manual_non_power_managed_mtsession.id
      machine_count   = 1
    }
  ]
  desktops = [
    {
      published_name = var.desktop_name
      description    = var.desktop_description
      restricted_access_users = {
        allow_list = var.allow_list
      }
      enabled                = true
      enable_session_roaming = false
    }
  ]

  restricted_access_users = {
    allow_list = var.allow_list
  }
}
