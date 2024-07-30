# Get Zone resource by name
data "citrix_zone" "test_zone" {
  name = var.citrix_zone
}



################################################################
# create RG via Module Mandant m019 "Morus GmbH"
################################################################

module "citrix_core" {
  #source = "gitlab.abraxas-tools.ch/sit/terraform-azurerm-rg-mvd-v2/azurerg"
  source                             = "git::https://github.com/dimi4ik/terraform-citrix-mcdg/?ref=v0.0.5"
  delivery_group_name                = var.delivery_group_name
  delivery_group_description         = var.delivery_group_description
  desktop_description                = var.desktop_description
  desktop_name                       = var.desktop_name
  citrix_machine_catalog_description = var.citrix_machine_catalog_description
  citrix_machine_catalog_name        = var.citrix_machine_catalog_name
  citrix_machine_catalog_zone        = data.citrix_zone.test_zone.id
  ad_admin_password                  = var.ad_admin_password
  ad_admin_username                  = var.ad_admin_username
  provider_hostname                  = var.provider_hostname
  citrix_machine_catalog_account     = var.citrix_machine_catalog_account
  provider_disable_ssl_verification  = var.provider_disable_ssl_verification
  allow_list                         = var.allow_list
}
