variable "sagemaker_hubs" {
  description = <<EOT
Map of sagemaker_hubs, attributes below
Required:
    - hub_description
    - hub_name
Optional:
    - hub_display_name
    - hub_search_keywords
    - region
    - tags
    - tags_all
    - s3_storage_config (block):
        - s3_output_path (optional)
EOT

  type = map(object({
    hub_description     = string
    hub_name            = string
    hub_display_name    = optional(string)
    hub_search_keywords = optional(set(string))
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
    s3_storage_config = optional(object({
      s3_output_path = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_hubs : (
        (length(v.hub_name) >= 1 && length(v.hub_name) <= 63) && (can(regex("^[0-9A-Za-z](-*[0-9A-Za-z]){0,62}$", v.hub_name)))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; Valid characters are a-z, A-Z, 0-9, and - (hyphen)."
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_hubs : (
        length(v.hub_description) >= 1 && length(v.hub_description) <= 1024
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_hubs : (
        v.hub_display_name == null || (length(v.hub_display_name) >= 1 && length(v.hub_display_name) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.sagemaker_hubs : (
        v.s3_storage_config == null || (v.s3_storage_config.s3_output_path == null || ((can(regex("^(https|s3)://([^/])/?(.*)$", v.s3_storage_config.s3_output_path))) && (length(v.s3_storage_config.s3_output_path) >= 1 && length(v.s3_storage_config.s3_output_path) <= 1024)))
      )
    ])
    error_message = "all of: must be between 1 and 1024 characters"
  }
}

