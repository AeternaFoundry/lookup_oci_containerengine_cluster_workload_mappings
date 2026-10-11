output "containerengine_cluster_workload_mappings_lookup_id" {
  description = "Map of id values across all containerengine_cluster_workload_mappings_lookup, keyed the same as var.containerengine_cluster_workload_mappings_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_containerengine_cluster_workload_mappings.containerengine_cluster_workload_mappings_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containerengine_cluster_workload_mappings_lookup_cluster_id" {
  description = "Map of cluster_id values across all containerengine_cluster_workload_mappings_lookup, keyed the same as var.containerengine_cluster_workload_mappings_lookup except keys with no cluster_id are omitted"
  value       = { for k, v in data.oci_containerengine_cluster_workload_mappings.containerengine_cluster_workload_mappings_lookup : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "containerengine_cluster_workload_mappings_lookup_filter" {
  description = "Map of filter values across all containerengine_cluster_workload_mappings_lookup, keyed the same as var.containerengine_cluster_workload_mappings_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_containerengine_cluster_workload_mappings.containerengine_cluster_workload_mappings_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "containerengine_cluster_workload_mappings_lookup_workload_mappings" {
  description = "Map of workload_mappings values across all containerengine_cluster_workload_mappings_lookup, keyed the same as var.containerengine_cluster_workload_mappings_lookup except keys with no workload_mappings are omitted"
  value       = { for k, v in data.oci_containerengine_cluster_workload_mappings.containerengine_cluster_workload_mappings_lookup : k => v.workload_mappings if v.workload_mappings != null && length(v.workload_mappings) > 0 }
}

