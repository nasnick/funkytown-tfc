//// dns, elk and monitoring workspace
//
module "workspace-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.15"

  workspace_name    = "hc-svc-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
  # working_directory = var.SVC_VCS_WORKING_DIRECTORY
  # vcs_repo_identifier = var.SVC_VCS_REPO_IDENTIFIER
}

//// AWS creds - Now via Doormat
//
// module "varAwsAccessKey-hc-svc-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_ACCESS_KEY_ID"
//   value       = var.AWS_ACCESS_KEY_ID
//   category    = "env"
//   workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
//   sensitive   = true
// }

// module "varAwsSecretKey-hc-svc-dev" {
//   source  = "app.terraform.io/funkytown/vars/tfe"
//   version = "1.0.14"

//   key         = "AWS_SECRET_ACCESS_KEY"
//   value       = var.AWS_SECRET_ACCESS_KEY
//   category    = "env"
//   workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
//   sensitive   = true
// }

//// Provider
//
provider "azurerm" {
  features {}
}

//// Azure creds
//
module "varArmSubscriptionId-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientId-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmClientSecret-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varArmTenantId-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varGithubOauthToken-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "GITHUB_OAUTH_APP_TOKEN"
  value        = var.GITHUB_OAUTH_APP_TOKEN
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varWorkingDirectory-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "SVC_VCS_WORKING_DIRECTORY"
  value        = var.SVC_VCS_WORKING_DIRECTORY
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}

module "varGithubRepoIdentifier-hc-svc-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "SVC_VCS_REPO_IDENTIFIER"
  value        = var.SVC_VCS_REPO_IDENTIFIER
  category     = "env"
  workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
  sensitive    = true
}
//// GCP creds
//
# module "varGoogleCredentials-hc-svc-dev" {
#   source  = "app.terraform.io/funkytown/vars/tfe"
#   version = "1.0.14"

#   key          = "GOOGLE_CREDENTIALS"
#   value        = var.GOOGLE_CREDENTIALS
#   category     = "env"
#   workspace_id = module.workspace-hc-svc-dev.tw-tw-main-id
#   sensitive    = true
# }