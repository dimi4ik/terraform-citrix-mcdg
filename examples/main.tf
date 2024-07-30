################################################################
# create RG via Module Mandant m019 "Morus GmbH"
################################################################

module "citrix_core" {
  source                             = "git::https://github.com/dimi4ik/terraform-citrix-mcdg/?ref=v0.0.4"
  delivery_group_name                = var.delivery_group_name
  delivery_group_description         = var.delivery_group_description
  desktop_description                = var.desktop_description
  desktop_name                       = var.desktop_description
  citrix_machine_catalog_description = var.citrix_machine_catalog_description
  citrix_machine_catalog_name        = var.citrix_machine_catalog_name
  citrix_machine_catalog_zone        = var.citrix_machine_catalog_zone
  ad_admin_password                  = var.ad_admin_password
  ad_admin_username                  = var.ad_admin_username
  provider_hostname                  = var.provider_hostname
  citrix_machine_catalog_account     = var.citrix_machine_catalog_account
  provider_disable_ssl_verification  = var.provider_disable_ssl_verification
  allow_list                         = var.allow_list
}
