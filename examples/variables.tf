########################################################################
### die Vars muss im voraus als Environment Variables gesetzt werden ###
### export VMM Variable                                 s      werden ###
########################################################################


variable "ad_admin_password" {
  description = "The Domain Admin username of the on-premises Active Directory / The API key client id for Citrix Cloud customer."
  type        = string
  sensitive   = true
}




########################################################################
### die Vars muss im voraus als Environment Variables gesetzt werden ###
###  ###
########################################################################


variable "ad_admin_username" {
  type        = string
  description = "The Domain Admin password of the on-premises Active Directory / The API key client secret for Citrix Cloud customer."

}



# citrix.tf variables
## On-Premises customer provider settings
variable "provider_hostname" {
  description = "The hostname of the Citrix Virtual Apps and Desktops Delivery Controller."
  type        = string

}


# Set this field to true if DDC does not have a valid SSL certificate configured. Omit this variable for Citrix Cloud customer.

variable "provider_disable_ssl_verification" {
  description = "Disable SSL verification for the Citrix Virtual Apps and Desktops Delivery Controller."
  type        = bool
}



# Common provider settings
# For On-Premises customers: Domain Admin username and password are needed to interact with the Citrix Virtual Apps and Desktops Delivery Controller.
# For Citrix Cloud customers: API key client id and secret are needed to interact with Citrix DaaS APIs. These can be created/found under Identity and Access Management > API Access



# delivery_groups.tf variables
variable "delivery_group_name" {
  description = "Name of the Delivery Group to create"
  type        = string

}

variable "allow_list" {
  description = "List of users to allow for the Delivery Group in DOMAIN\\username format"
  type        = list(string)

}



variable "desktop_name" {
  type        = string
  description = "Name of the published desktop"
}


variable "desktop_description" {
  type        = string
  description = "description of the published desktop"
}



variable "citrix_machine_catalog_name" {
  type        = string
  description = "Name of the machine catalog"
}

variable "citrix_machine_catalog_description" {
  type        = string
  description = "Description of the machine catalog"
}

variable "citrix_machine_catalog_zone" {
  type        = string
  description = "Zone of the machine catalog"
}

variable "citrix_machine_catalog_account" {
  description = "Allocation type of the machine catalog"
  type        = string
}

variable "delivery_group_description" {
  type        = string
  description = "Description of the delivery group"

}



variable "citrix_zone" {
  description = "value"
  type        = string
}