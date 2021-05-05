resource "tfe_variable" "main" {
  key          = var.key
  value        = var.value
  category     = var.category
  workspace_id = var.workspace_id
  description  = var.description
  sensitive    = var.sensitive
}

