resource "tfe_workspace" "main" {
  name              = var.workspace_name
  organization      = var.org
  auto_apply        = var.auto_apply
  terraform_version = var.terraform_version
}
