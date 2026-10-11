output "variable_group_variables_id" {
  description = "Map of id values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no id are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "variable_group_variables_name" {
  description = "Map of name values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no name are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "variable_group_variables_project_id" {
  description = "Map of project_id values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "variable_group_variables_secret_value" {
  description = "Map of secret_value values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no secret_value are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.secret_value if v.secret_value != null && length(v.secret_value) > 0 }
  sensitive   = true
}
output "variable_group_variables_value" {
  description = "Map of value values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no value are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.value if v.value != null && length(v.value) > 0 }
}
output "variable_group_variables_variable_group_id" {
  description = "Map of variable_group_id values across all variable_group_variables, keyed the same as var.variable_group_variables except keys with no variable_group_id are omitted"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.variable_group_id if v.variable_group_id != null && length(v.variable_group_id) > 0 }
}

