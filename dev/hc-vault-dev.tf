//// vault workspace
//
module "workspace-hc-vault-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.15"

  workspace_name    = "hc-vault-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
}

