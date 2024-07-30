[![Maintained](https://img.shields.io/badge/Maintained%20by-XOAP-success)](https://xoap.io)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D1.1.6-blue)](https://terraform.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Table of Contents

- [Introduction](#introduction)
- [Guidelines](#guidelines)
- [Share the Love](#share-the-love)
- [Contributing](#contributing)
- [Bug Reports and Feature Requests](#bug-reports--feature-requests)
- [Developing](#developing)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

---

## Introduction

This is a template for Terraform modules Best Pract

It is part of our [XOAP](https://xoap.io) Automation Forces Open Source community library to give you a quick start into Infrastructure as Code deployments with Terraform.

We have a lot of Terraform modules that are Open Source and maintained by the [XOAP](https://xoap.io) staff.

Please check the links for more info, including usage information and full documentation:

- [XOAP Website](https://xoap.io)
- [XOAP Documentation](https://docs.xoap.io)
- [Twitter](https://twitter.com/xoap_io)
- [LinkedIn](https://www.linkedin.com/company/xoap_io)

---

## Guidelines

We are using the following guidelines to write code and make it easier for everyone to follow a distinctive guideline.
Please check these links before starting to work on changes.

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

Git Naming Conventions are an important part of the development process.
They describe how Branches, Commit Messages,
Pull Requests and Tags should look like to make them easily understandable for everybody in the development chain.

[Git Naming Conventions](https://namingconvention.org/git/)

He Conventional Commits specification is a lightweight convention on top of commit messages.
It provides an easy set of rules for creating an explicit commit history; which makes it easier to write automated tools on top of.

[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

The better a Pull Request description is, the better a review can understand and decide on how to review the changes.
This improves implementation speed and reduces communication between the requester,
and the reviewer is resulting in much less overhead.

[Writing A Great Pull Request Description](https://www.pullrequest.com/blog/writing-a-great-pull-request-description/)

Versioning is a crucial part for Terraform Stacks and Modules.
Without version tags you cannot clearly create a stable environment
and be sure that your latest changes will not crash your production environment (sure it still can happen,
but we are trying our best to implement everything that we can to reduce the risk)

[Semantic Versioning](https://semver.org)

[Terraform Naming Conventions](https://www.terraform-best-practices.com/naming)

---

## Share the Love

Like this project?
Please give it a ★ on [our GitHub](https://github.com/xoap-io/terraform-module-template)!
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

## Usage

### Installation

For the first time using this template, necessary tools need to be installed.
A script to prepare a Mac is provided under ./build/init.ps1

This script will install the following dependencies:

- [pre-commit](https://github.com/pre-commit/pre-commit)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)
- [tflint](https://github.com/terraform-linters/tflint)
- [tfsec](https://github.com/aquasecurity/tfsec)
- [checkov](https://github.com/bridgecrewio/checkov)
- [terrascan](https://github.com/accurics/terrascan)
- [kics](https://github.com/Checkmarx/kics)

This script configures:

- global git template under ~/.git-template
- global pre-commit hooks for prepare-commit-msg and commit-msg under ~/.git-template/hooks
- GitHub actions:
  - linting and checks for pull requests from dev to master/main
  - automatic tagging and release creation on pushes to master/main
  - dependabot updates

It currently supports the automated installation for macOS. Support for Windows and Linux will be available soon.

### Synchronisation

We provided a script under ./build/sync_template.ps1 to fetch the latest changes from this template repository.
Please be aware that this is mainly a copy operation which means all your current changes have to be committed first,
and after running the script, you have to merge these changes into your codebase.

### Configuration

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
| <a name="input_computer_name"></a> [computer\_name](#input\_computer\_name) | The hostname of the Citrix DDC server | `string` | n/a | yes |
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
