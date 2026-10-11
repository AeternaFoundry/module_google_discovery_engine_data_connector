variable "discovery_engine_data_connectors" {
  description = <<EOT
Map of discovery_engine_data_connectors, attributes below
Required:
    - collection_display_name
    - collection_id
    - data_source
    - location
    - refresh_interval
Optional:
    - auto_run_disabled
    - connector_modes
    - data_source_version
    - deletion_policy
    - incremental_refresh_interval
    - incremental_sync_disabled
    - json_params
    - kms_key_name
    - params
    - project
    - static_ip_enabled
    - sync_mode
    - tag
    - action_config (block):
        - action_params (optional)
        - create_bap_connection (optional)
    - bap_config (block):
        - enabled_actions (optional)
        - supported_connector_modes (optional)
    - destination_configs (block):
        - destinations (optional, block):
            - host (optional)
            - port (optional)
        - key (optional)
        - params (optional)
    - entities (block):
        - entity_name (optional)
        - key_property_mappings (optional)
        - params (optional)
    - metadata (block):
        - author (optional)
        - description (optional)
        - note (optional)
        - short_description (optional)
        - title (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    collection_display_name      = string
    collection_id                = string
    data_source                  = string
    location                     = string
    refresh_interval             = string
    auto_run_disabled            = optional(bool)
    connector_modes              = optional(list(string))
    data_source_version          = optional(number)
    deletion_policy              = optional(string)
    incremental_refresh_interval = optional(string)
    incremental_sync_disabled    = optional(bool)
    json_params                  = optional(string)
    kms_key_name                 = optional(string)
    params                       = optional(map(string))
    project                      = optional(string)
    static_ip_enabled            = optional(bool)
    sync_mode                    = optional(string)
    tag                          = optional(string)
    action_config = optional(object({
      action_params         = optional(map(string))
      create_bap_connection = optional(bool)
    }))
    bap_config = optional(object({
      enabled_actions           = optional(list(string))
      supported_connector_modes = optional(list(string))
    }))
    destination_configs = optional(list(object({
      destinations = optional(list(object({
        host = optional(string)
        port = optional(number)
      })))
      key    = optional(string)
      params = optional(string)
    })))
    entities = optional(list(object({
      entity_name           = optional(string)
      key_property_mappings = optional(map(string))
      params                = optional(string)
    })))
    metadata = optional(object({
      author            = optional(string)
      description       = optional(string)
      note              = optional(string)
      short_description = optional(string)
      title             = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.discovery_engine_data_connectors : (
        v.destination_configs == null || alltrue([for item in v.destination_configs : (item.params == null || (can(jsondecode(item.params))))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.discovery_engine_data_connectors : (
        v.entities == null || alltrue([for item in v.entities : (item.params == null || (can(jsondecode(item.params))))])
      )
    ])
    error_message = "must be valid JSON"
  }
}

