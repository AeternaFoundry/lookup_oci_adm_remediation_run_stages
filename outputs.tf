output "adm_remediation_run_stages_lookup_id" {
  description = "Map of id values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "adm_remediation_run_stages_lookup_filter" {
  description = "Map of filter values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "adm_remediation_run_stages_lookup_remediation_run_id" {
  description = "Map of remediation_run_id values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no remediation_run_id are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.remediation_run_id if v.remediation_run_id != null && length(v.remediation_run_id) > 0 }
}
output "adm_remediation_run_stages_lookup_remediation_run_stage_collection" {
  description = "Map of remediation_run_stage_collection values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no remediation_run_stage_collection are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.remediation_run_stage_collection if v.remediation_run_stage_collection != null && length(v.remediation_run_stage_collection) > 0 }
}
output "adm_remediation_run_stages_lookup_status" {
  description = "Map of status values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no status are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}
output "adm_remediation_run_stages_lookup_type" {
  description = "Map of type values across all adm_remediation_run_stages_lookup, keyed the same as var.adm_remediation_run_stages_lookup except keys with no type are omitted"
  value       = { for k, v in data.oci_adm_remediation_run_stages.adm_remediation_run_stages_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

