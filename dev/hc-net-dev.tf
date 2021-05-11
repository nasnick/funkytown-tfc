//// network workspace
//
module "workspace-hc-net-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.21"

  workspace_name    = "hc-net-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
  working_directory      = var.NET_VCS_WORKING_DIRECTORY
  vcs_repo_identifier    = var.NET_VCS_REPO_IDENTIFIER
  github_oauth_app_token = var.GITHUB_OAUTH_APP_TOKEN
}

//// AWS creds - now via Doormat
//
// module "varAwsAccessKey-hc-net-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_ACCESS_KEY_ID"
//   value       = var.AWS_ACCESS_KEY_ID
//   category    = "env"
//   workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
//   sensitive   = true
// }

// module "varAwsSecretKey-hc-net-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_SECRET_ACCESS_KEY"
//   value       = var.AWS_SECRET_ACCESS_KEY
//   category    = "env"
//   workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
//   sensitive   = true
// }

//// Azure creds
//
module "varArmSubscriptionId-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientId-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientSecret-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmTenantId-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varWorkingDirectory-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "NET_VCS_WORKING_DIRECTORY"
  value        = var.NET_VCS_WORKING_DIRECTORY
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varGithubRepoIdentifier-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "NET_VCS_REPO_IDENTIFIER"
  value        = var.NET_VCS_REPO_IDENTIFIER
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varOrganisation-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ORGANISATION"
  value        = var.ORGANISATION
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

module "varResourceGroupWorkspace-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "RESOURCE_GROUP_WORKSPACE"
  value        = var.RESOURCE_GROUP_WORKSPACE
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}

//// GCP creds
//
# module "varGoogleCredentials-hc-net-dev" {
#   source  = "app.terraform.io/funkytown/vars/tfe"
#   version = "1.0.14"

#   key          = "GOOGLE_CREDENTIALS"
#   value        = var.GOOGLE_CREDENTIALS
#   category     = "env"
#   workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
#   sensitive    = true
# }
