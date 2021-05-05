//// sentinel development workspace
//// all cloud creds are required in this workspace so that we can show to limit infrastructure with sentinel policy applied to it, and sentinel development in general
//
module "workspace-hc-sentinel-dev" {
  source  = "app.terraform.io/funkytown/workspaces/tfe"
  version = "1.0.15"

  workspace_name    = "hc-sentinel-dev"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
}

module "policy-set-attach-cloud-agnostic" {
  source = "app.terraform.io/funkytown/policy-set/tfe"

  version                  = "1.0.21"
  global                   = true
  policy_name              = "cloud-agnostic"
  policy_description       = "Cloud-agnostic policies"
  policy_organization      = "funkytown"
  policy_path              = "pac/cloud-agnostic"
  policy_repository        = "ml4/hc-sentinel"
  policy_repository_branch = "main"
  oauth_token_id           = "ot-ZH6SXVBFJhwcfc2g"
}

module "policy-set-attach-aws" {
  source = "app.terraform.io/funkytown/policy-set/tfe"

  version = "1.0.21"
  global  = false
  workspace_ids = [
    "ws-cThym3Tvycv67PwR", // hc-tfe-aws-dev
    "ws-ZGzBRr4CpyaNFbjg", // hc-tfe-seo-aws-dev
    "ws-gWAJJNPLyHvVFCaQ"  // hc-tfe-smo-aws-dev
  ]
  policy_name              = "aws-specific"
  policy_description       = "AWS-specific policies"
  policy_organization      = "funkytown"
  policy_path              = "pac/aws"
  policy_repository        = "ml4/hc-sentinel"
  policy_repository_branch = "main"
  oauth_token_id           = "ot-ZH6SXVBFJhwcfc2g"
}
