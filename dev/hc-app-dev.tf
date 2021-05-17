//// network workspace
//
module "workspace-hc-app-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.24"

  workspace_name    = "hc-app-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
  working_directory      = var.APP_VCS_WORKING_DIRECTORY
  vcs_repo_identifier    = var.APP_VCS_REPO_IDENTIFIER
  github_oauth_app_token = var.GITHUB_OAUTH_APP_TOKEN
  remote_state_consumer_ids = []
}

//// AWS creds - now via Doormat
//
// module "varAwsAccessKey-hc-app-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_ACCESS_KEY_ID"
//   value       = var.AWS_ACCESS_KEY_ID
//   category    = "env"
//   workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
//   sensitive   = true
// }

// module "varAwsSecretKey-hc-app-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_SECRET_ACCESS_KEY"
//   value       = var.AWS_SECRET_ACCESS_KEY
//   category    = "env"
//   workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
//   sensitive   = true
// }

//// Azure creds
//
module "varArmSubscriptionId-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientId-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientSecret-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmTenantId-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varWorkingDirectory-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "APP_VCS_WORKING_DIRECTORY"
  value        = var.APP_VCS_WORKING_DIRECTORY
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varGithubRepoIdentifier-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "APP_VCS_REPO_IDENTIFIER"
  value        = var.APP_VCS_REPO_IDENTIFIER
  category     = "env"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
  sensitive    = true
}

module "varOrganisation-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "organisation"
  value        = var.organisation
  category     = "terraform"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
}

module "varResourceGroupWorkspace-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "resource_group_workspace"
  value        = var.resource_group_workspace
  category     = "terraform"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
}

module "varNetwork-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "virtual_network_workspace"
  value        = var.virtual_network_workspace
  category     = "terraform"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
}

module "varSharedServices-hc-app-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "shared_services_workspace"
  value        = var.shared_services_workspace
  category     = "terraform"
  workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
}
//// GCP creds
//
# module "varGoogleCredentials-hc-app-dev" {
#   source  = "app.terraform.io/funkytown/vars/tfe"
#   version = "1.0.14"

#   key          = "GOOGLE_CREDENTIALS"
#   value        = var.GOOGLE_CREDENTIALS
#   category     = "env"
#   workspace_id = module.workspace-hc-app-dev.tw-tw-main-id
#   sensitive    = true
# }
