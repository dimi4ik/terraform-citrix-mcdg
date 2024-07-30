<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_citrix"></a> [citrix](#requirement\_citrix) | >=0.6.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_citrix_core"></a> [citrix\_core](#module\_citrix\_core) | git::https://github.com/dimi4ik/terraform-citrix-mcdg/ | v0.0.4 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ad_admin_password"></a> [ad\_admin\_password](#input\_ad\_admin\_password) | The Domain Admin username of the on-premises Active Directory / The API key client id for Citrix Cloud customer. | `string` | n/a | yes |
| <a name="input_ad_admin_username"></a> [ad\_admin\_username](#input\_ad\_admin\_username) | The Domain Admin password of the on-premises Active Directory / The API key client secret for Citrix Cloud customer. | `string` | n/a | yes |
| <a name="input_allow_list"></a> [allow\_list](#input\_allow\_list) | List of users to allow for the Delivery Group in DOMAIN\username format | `list(string)` | n/a | yes |
| <a name="input_citrix_machine_catalog_account"></a> [citrix\_machine\_catalog\_account](#input\_citrix\_machine\_catalog\_account) | Allocation type of the machine catalog | `string` | n/a | yes |
| <a name="input_citrix_machine_catalog_description"></a> [citrix\_machine\_catalog\_description](#input\_citrix\_machine\_catalog\_description) | Description of the machine catalog | `string` | n/a | yes |
| <a name="input_citrix_machine_catalog_name"></a> [citrix\_machine\_catalog\_name](#input\_citrix\_machine\_catalog\_name) | Name of the machine catalog | `string` | n/a | yes |
| <a name="input_citrix_machine_catalog_zone"></a> [citrix\_machine\_catalog\_zone](#input\_citrix\_machine\_catalog\_zone) | Zone of the machine catalog | `string` | n/a | yes |
| <a name="input_delivery_group_description"></a> [delivery\_group\_description](#input\_delivery\_group\_description) | Description of the delivery group | `string` | n/a | yes |
| <a name="input_delivery_group_name"></a> [delivery\_group\_name](#input\_delivery\_group\_name) | Name of the Delivery Group to create | `string` | n/a | yes |
| <a name="input_desktop_description"></a> [desktop\_description](#input\_desktop\_description) | description of the published desktop | `string` | n/a | yes |
| <a name="input_desktop_name"></a> [desktop\_name](#input\_desktop\_name) | Name of the published desktop | `string` | n/a | yes |
| <a name="input_provider_disable_ssl_verification"></a> [provider\_disable\_ssl\_verification](#input\_provider\_disable\_ssl\_verification) | Disable SSL verification for the Citrix Virtual Apps and Desktops Delivery Controller. | `bool` | n/a | yes |
| <a name="input_provider_hostname"></a> [provider\_hostname](#input\_provider\_hostname) | The hostname of the Citrix Virtual Apps and Desktops Delivery Controller. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
