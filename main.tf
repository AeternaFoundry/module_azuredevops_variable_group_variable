resource "azuredevops_variable_group_variable" "variable_group_variables" {
  for_each = var.variable_group_variables

  name              = each.value.name
  project_id        = each.value.project_id
  variable_group_id = each.value.variable_group_id
  secret_value      = each.value.secret_value
  value             = each.value.value

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

