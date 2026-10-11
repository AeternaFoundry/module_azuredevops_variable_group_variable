variable "variable_group_variables" {
  description = <<EOT
Map of variable_group_variables, attributes below
Required:
    - name
    - project_id
    - variable_group_id
Optional:
    - secret_value
    - value
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name              = string
    project_id        = string
    variable_group_id = string
    secret_value      = optional(string)
    value             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.variable_group_variables : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.variable_group_variables : (
        length(v.variable_group_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.variable_group_variables : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

