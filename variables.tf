variable "adm_remediation_run_stages_lookup" {
  description = <<EOT
Map of adm_remediation_run_stages_lookup, attributes below
Required:
    - remediation_run_id
Optional:
    - status
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    remediation_run_id = string
    status             = optional(string)
    type               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

