output "sagemaker_hubs_id" {
  description = "Map of id values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sagemaker_hubs_arn" {
  description = "Map of arn values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_hubs_hub_description" {
  description = "Map of hub_description values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.hub_description if v.hub_description != null && length(v.hub_description) > 0 }
}
output "sagemaker_hubs_hub_display_name" {
  description = "Map of hub_display_name values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.hub_display_name if v.hub_display_name != null && length(v.hub_display_name) > 0 }
}
output "sagemaker_hubs_hub_name" {
  description = "Map of hub_name values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.hub_name if v.hub_name != null && length(v.hub_name) > 0 }
}
output "sagemaker_hubs_hub_search_keywords" {
  description = "Map of hub_search_keywords values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.hub_search_keywords if v.hub_search_keywords != null && length(v.hub_search_keywords) > 0 }
}
output "sagemaker_hubs_region" {
  description = "Map of region values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_hubs_s3_storage_config" {
  description = "Map of s3_storage_config values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.s3_storage_config if v.s3_storage_config != null && length(v.s3_storage_config) > 0 }
}
output "sagemaker_hubs_tags" {
  description = "Map of tags values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_hubs_tags_all" {
  description = "Map of tags_all values across all sagemaker_hubs, keyed the same as var.sagemaker_hubs"
  value       = { for k, v in aws_sagemaker_hub.sagemaker_hubs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

