[![Maintained](https://img.shields.io/badge/Maintained%20by-Dima-success)](https://www.abraxas.ch)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D1.1.6-blue)](https://terraform.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Table of Contents

- [Table of Contents](#table-of-contents)
  - [Usage](#usage)
  - [Share the Love](#share-the-love)
  - [Contributing](#contributing)
    - [Bug Reports \& Feature Requests](#bug-reports--feature-requests)
    - [Developing](#developing)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)


## Usage

#password for windows
$env:TF_VAR_ad_admin_password=""
#password for linux
export TF_VAR_ad_admin_password=""

```
module "citrix_core" {
  source           = "git::https://github.com/dimi4ik/terraform-citrix-mcdg/?ref=v0.0.5"
  delivery_group_name = var.delivery_group_name
  delivery_group_description = var.delivery_group_description
  desktop_description = var.desktop_description
  desktop_name = var.desktop_description
  citrix_machine_catalog_description = var.citrix_machine_catalog_description
  citrix_machine_catalog_name = var.citrix_machine_catalog_name
  citrix_machine_catalog_zone = var.citrix_machine_catalog_zone
  ad_admin_password = var.ad_admin_password
  ad_admin_username = var.ad_admin_username
  provider_hostname = var.provider_hostname
  citrix_machine_catalog_account =var.citrix_machine_catalog_account
  provider_disable_ssl_verification = var.provider_disable_ssl_verification
  allow_list = var.allow_list
}
```

---

## Share the Love

Like this project?
Please give it a ★ on [our GitHub](https://github.com/dimi4ik/terraform-citrix-mcdg)!
It helps us a lot.

---

## Contributing

### Bug Reports & Feature Requests

Please use the issue tracker to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing this project, we would love to hear from you! Email us.

PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

- Fork the repo on GitHub
- Clone the project to your own machine
- Commit changes to your own branch
- Push your work back up to your fork
- Submit a Pull Request so that we can review your changes

> NOTE: Be sure to merge the latest changes from "upstream" before making a pull request!

---


<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_citrix"></a> [citrix](#requirement\_citrix) | >=0.6.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_citrix"></a> [citrix](#provider\_citrix) | 0.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [citrix_delivery_group.example_delivery_group](https://registry.terraform.io/providers/citrix/citrix/latest/docs/resources/delivery_group) | resource |
| [citrix_machine_catalog.example_manual_non_power_managed_mtsession](https://registry.terraform.io/providers/citrix/citrix/latest/docs/resources/machine_catalog) | resource |

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

| Name | Description |
|------|-------------|
| <a name="output_delivery_group_id"></a> [delivery\_group\_id](#output\_delivery\_group\_id) | value of the delivery group id |
| <a name="output_machine_catalog_id"></a> [machine\_catalog\_id](#output\_machine\_catalog\_id) | value of the machine catalog id |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
