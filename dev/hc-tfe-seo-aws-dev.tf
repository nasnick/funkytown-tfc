//// tfe workspace
//
module "workspace-hc-tfe-seo-aws-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.15"

  workspace_name    = "hc-tfe-seo-aws-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
}

//// AWS creds - Now via Doormat
//
// module "varAwsAccessKey-hc-tfe-seo-aws-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_ACCESS_KEY_ID"
//   value       = var.AWS_ACCESS_KEY_ID
//   category    = "env"
//   workspace_id = module.workspace-hc-tfe-seo-aws-dev.tw-tw-main-id
//   sensitive   = true
// }

// module "varAwsSecretKey-hc-tfe-seo-aws-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_SECRET_ACCESS_KEY"
//   value       = var.AWS_SECRET_ACCESS_KEY
//   category    = "env"
//   workspace_id = module.workspace-hc-tfe-seo-aws-dev.tw-tw-main-id
//   sensitive   = true
// }

