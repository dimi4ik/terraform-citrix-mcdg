

output "machine_catalog_id" {
  description = "value of the machine catalog id"
  value       = citrix_machine_catalog.example_manual_non_power_managed_mtsession.id
}

output "delivery_group_id" {
  description = "value of the delivery group id"
  value       = citrix_delivery_group.example_delivery_group.id
}
