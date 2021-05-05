//// network workspace
//
module "workspace-hc-net-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.15"

  workspace_name    = "hc-net-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
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

//// GCP creds
//
module "varGoogleCredentials-hc-net-dev" {
  source  = "app.terraform.io/funkytown/vars/tfe"
  version = "1.0.14"

  key          = "GOOGLE_CREDENTIALS"
  value        = var.GOOGLE_CREDENTIALS
  category     = "env"
  workspace_id = module.workspace-hc-net-dev.tw-tw-main-id
  sensitive    = true
}
