data "oci_containerengine_cluster_workload_mappings" "containerengine_cluster_workload_mappings_lookup" {
  for_each = var.containerengine_cluster_workload_mappings_lookup

  cluster_id = each.value.cluster_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

