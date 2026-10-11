resource "google_discovery_engine_data_connector" "discovery_engine_data_connectors" {
  for_each = var.discovery_engine_data_connectors

  collection_display_name      = each.value.collection_display_name
  collection_id                = each.value.collection_id
  data_source                  = each.value.data_source
  location                     = each.value.location
  refresh_interval             = each.value.refresh_interval
  auto_run_disabled            = each.value.auto_run_disabled
  connector_modes              = each.value.connector_modes
  data_source_version          = each.value.data_source_version
  deletion_policy              = each.value.deletion_policy
  incremental_refresh_interval = each.value.incremental_refresh_interval
  incremental_sync_disabled    = each.value.incremental_sync_disabled
  json_params                  = each.value.json_params
  kms_key_name                 = each.value.kms_key_name
  params                       = each.value.params
  project                      = each.value.project
  static_ip_enabled            = each.value.static_ip_enabled
  sync_mode                    = each.value.sync_mode
  tag                          = each.value.tag

  dynamic "action_config" {
    for_each = each.value.action_config != null ? [each.value.action_config] : []
    content {
      action_params         = action_config.value.action_params
      create_bap_connection = action_config.value.create_bap_connection
    }
  }

  dynamic "bap_config" {
    for_each = each.value.bap_config != null ? [each.value.bap_config] : []
    content {
      enabled_actions           = bap_config.value.enabled_actions
      supported_connector_modes = bap_config.value.supported_connector_modes
    }
  }

  dynamic "destination_configs" {
    for_each = each.value.destination_configs != null ? each.value.destination_configs : []
    content {
      dynamic "destinations" {
        for_each = destination_configs.value.destinations != null ? destination_configs.value.destinations : []
        content {
          host = destinations.value.host
          port = destinations.value.port
        }
      }
      key    = destination_configs.value.key
      params = destination_configs.value.params
    }
  }

  dynamic "entities" {
    for_each = each.value.entities != null ? each.value.entities : []
    content {
      entity_name           = entities.value.entity_name
      key_property_mappings = entities.value.key_property_mappings
      params                = entities.value.params
    }
  }

  dynamic "metadata" {
    for_each = each.value.metadata != null ? [each.value.metadata] : []
    content {
      author            = metadata.value.author
      description       = metadata.value.description
      note              = metadata.value.note
      short_description = metadata.value.short_description
      title             = metadata.value.title
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

