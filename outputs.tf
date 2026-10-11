output "discovery_engine_data_connectors_id" {
  description = "Map of id values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_data_connectors_action_config" {
  description = "Map of action_config values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no action_config are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => one(v.action_config) if v.action_config != null && length(v.action_config) > 0 }
}
output "discovery_engine_data_connectors_action_state" {
  description = "Map of action_state values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no action_state are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.action_state if v.action_state != null && length(v.action_state) > 0 }
}
output "discovery_engine_data_connectors_auto_run_disabled" {
  description = "Map of auto_run_disabled values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no auto_run_disabled are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.auto_run_disabled if v.auto_run_disabled != null }
}
output "discovery_engine_data_connectors_bap_config" {
  description = "Map of bap_config values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no bap_config are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => one(v.bap_config) if v.bap_config != null && length(v.bap_config) > 0 }
}
output "discovery_engine_data_connectors_blocking_reasons" {
  description = "Map of blocking_reasons values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no blocking_reasons are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.blocking_reasons if v.blocking_reasons != null && length(v.blocking_reasons) > 0 }
}
output "discovery_engine_data_connectors_collection_display_name" {
  description = "Map of collection_display_name values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no collection_display_name are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.collection_display_name if v.collection_display_name != null && length(v.collection_display_name) > 0 }
}
output "discovery_engine_data_connectors_collection_id" {
  description = "Map of collection_id values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no collection_id are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "discovery_engine_data_connectors_connector_modes" {
  description = "Map of connector_modes values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no connector_modes are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.connector_modes if v.connector_modes != null && length(v.connector_modes) > 0 }
}
output "discovery_engine_data_connectors_connector_type" {
  description = "Map of connector_type values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no connector_type are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.connector_type if v.connector_type != null && length(v.connector_type) > 0 }
}
output "discovery_engine_data_connectors_create_time" {
  description = "Map of create_time values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no create_time are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "discovery_engine_data_connectors_data_source" {
  description = "Map of data_source values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no data_source are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.data_source if v.data_source != null && length(v.data_source) > 0 }
}
output "discovery_engine_data_connectors_data_source_version" {
  description = "Map of data_source_version values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no data_source_version are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.data_source_version if v.data_source_version != null }
}
output "discovery_engine_data_connectors_deletion_policy" {
  description = "Map of deletion_policy values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no deletion_policy are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "discovery_engine_data_connectors_destination_configs" {
  description = "Map of destination_configs values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no destination_configs are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.destination_configs if v.destination_configs != null && length(v.destination_configs) > 0 }
}
output "discovery_engine_data_connectors_entities" {
  description = "Map of entities values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no entities are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.entities if v.entities != null && length(v.entities) > 0 }
}
output "discovery_engine_data_connectors_errors" {
  description = "Map of errors values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no errors are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.errors if v.errors != null && length(v.errors) > 0 }
}
output "discovery_engine_data_connectors_incremental_refresh_interval" {
  description = "Map of incremental_refresh_interval values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no incremental_refresh_interval are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.incremental_refresh_interval if v.incremental_refresh_interval != null && length(v.incremental_refresh_interval) > 0 }
}
output "discovery_engine_data_connectors_incremental_sync_disabled" {
  description = "Map of incremental_sync_disabled values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no incremental_sync_disabled are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.incremental_sync_disabled if v.incremental_sync_disabled != null }
}
output "discovery_engine_data_connectors_json_params" {
  description = "Map of json_params values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no json_params are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.json_params if v.json_params != null && length(v.json_params) > 0 }
}
output "discovery_engine_data_connectors_kms_key_name" {
  description = "Map of kms_key_name values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no kms_key_name are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "discovery_engine_data_connectors_last_sync_time" {
  description = "Map of last_sync_time values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no last_sync_time are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.last_sync_time if v.last_sync_time != null && length(v.last_sync_time) > 0 }
}
output "discovery_engine_data_connectors_latest_pause_time" {
  description = "Map of latest_pause_time values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no latest_pause_time are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.latest_pause_time if v.latest_pause_time != null && length(v.latest_pause_time) > 0 }
}
output "discovery_engine_data_connectors_location" {
  description = "Map of location values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_data_connectors_metadata" {
  description = "Map of metadata values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no metadata are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "discovery_engine_data_connectors_name" {
  description = "Map of name values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_data_connectors_params" {
  description = "Map of params values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no params are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.params if v.params != null && length(v.params) > 0 }
}
output "discovery_engine_data_connectors_private_connectivity_project_id" {
  description = "Map of private_connectivity_project_id values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no private_connectivity_project_id are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.private_connectivity_project_id if v.private_connectivity_project_id != null && length(v.private_connectivity_project_id) > 0 }
}
output "discovery_engine_data_connectors_project" {
  description = "Map of project values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.project if v.project != null && length(v.project) > 0 }
}
output "discovery_engine_data_connectors_realtime_state" {
  description = "Map of realtime_state values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no realtime_state are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.realtime_state if v.realtime_state != null && length(v.realtime_state) > 0 }
}
output "discovery_engine_data_connectors_refresh_interval" {
  description = "Map of refresh_interval values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no refresh_interval are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.refresh_interval if v.refresh_interval != null && length(v.refresh_interval) > 0 }
}
output "discovery_engine_data_connectors_state" {
  description = "Map of state values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no state are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.state if v.state != null && length(v.state) > 0 }
}
output "discovery_engine_data_connectors_static_ip_addresses" {
  description = "Map of static_ip_addresses values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no static_ip_addresses are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.static_ip_addresses if v.static_ip_addresses != null && length(v.static_ip_addresses) > 0 }
}
output "discovery_engine_data_connectors_static_ip_enabled" {
  description = "Map of static_ip_enabled values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no static_ip_enabled are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.static_ip_enabled if v.static_ip_enabled != null }
}
output "discovery_engine_data_connectors_sync_mode" {
  description = "Map of sync_mode values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no sync_mode are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.sync_mode if v.sync_mode != null && length(v.sync_mode) > 0 }
}
output "discovery_engine_data_connectors_tag" {
  description = "Map of tag values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no tag are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "discovery_engine_data_connectors_update_time" {
  description = "Map of update_time values across all discovery_engine_data_connectors, keyed the same as var.discovery_engine_data_connectors except keys with no update_time are omitted"
  value       = { for k, v in google_discovery_engine_data_connector.discovery_engine_data_connectors : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

