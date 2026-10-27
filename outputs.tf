output "variable_group_variables_id" {
  description = "Map of id values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.id }
}
output "variable_group_variables_name" {
  description = "Map of name values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.name }
}
output "variable_group_variables_project_id" {
  description = "Map of project_id values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.project_id }
}
output "variable_group_variables_secret_value" {
  description = "Map of secret_value values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.secret_value }
  sensitive   = true
}
output "variable_group_variables_value" {
  description = "Map of value values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.value }
}
output "variable_group_variables_variable_group_id" {
  description = "Map of variable_group_id values across all variable_group_variables, keyed the same as var.variable_group_variables"
  value       = { for k, v in azuredevops_variable_group_variable.variable_group_variables : k => v.variable_group_id }
}

