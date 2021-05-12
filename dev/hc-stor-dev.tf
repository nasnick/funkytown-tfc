//// dns, elk and monitoring workspace
//
module "workspace-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.21"

  workspace_name    = "hc-stor-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
  working_directory      = var.STOR_VCS_WORKING_DIRECTORY
  vcs_repo_identifier    = var.STOR_VCS_REPO_IDENTIFIER
  github_oauth_app_token = var.GITHUB_OAUTH_APP_TOKEN
}

//// AWS creds - Now via Doormat
//
// module "varAwsAccessKey-hc-stor-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_ACCESS_KEY_ID"
//   value       = var.AWS_ACCESS_KEY_ID
//   category    = "env"
//   workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
//   sensitive   = true
// }

// module "varAwsSecretKey-hc-stor-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_SECRET_ACCESS_KEY"
//   value       = var.AWS_SECRET_ACCESS_KEY
//   category    = "env"
//   workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
//   sensitive   = true
// }

//// Azure creds
//
module "varArmSubscriptionId-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientId-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientSecret-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmTenantId-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = true
}

module "varWorkingDirectory-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "STOR_VCS_WORKING_DIRECTORY"
  value        = var.STOR_VCS_WORKING_DIRECTORY
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = false
}

module "varGithubRepoIdentifier-hc-stor-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "STOR_VCS_REPO_IDENTIFIER"
  value        = var.STOR_VCS_REPO_IDENTIFIER
  category     = "env"
  workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
  sensitive    = false
}

//// GCP creds
//
# module "varGoogleCredentials-hc-stor-dev" {
#   source  = "app.terraform.io/funkytown/vars/tfe"
#   version = "1.0.14"

#   key          = "GOOGLE_CREDENTIALS"
#   value        = var.GOOGLE_CREDENTIALS
#   category     = "env"
#   workspace_id = module.workspace-hc-stor-dev.tw-tw-main-id
#   sensitive    = true
# }
