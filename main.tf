data "oci_adm_remediation_run_stages" "adm_remediation_run_stages_lookup" {
  for_each = var.adm_remediation_run_stages_lookup

  remediation_run_id = each.value.remediation_run_id
  status             = each.value.status
  type               = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

