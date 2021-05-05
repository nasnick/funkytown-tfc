tf_version = "0.14.7"

//// Sentinel policy set additions
//
policy_organization      = "funkytown"
policy_repository        = "ml4/hc-sentinel"
policy_repository_branch = "main"

//// oauth client set up
//
tfx_organization = "funkytown"

//// For the token required by the tfe_oauth_client resource in the oauth module, you need to use secrets.auto.tfvars,
//// containing the value of a github pat (developer settings>personal access tokens) with admin rights, probably
//// e.g. oauthToken = "89d509248a0ffb1778a7625f73531d3fb659f4b6"

// CIDR_block = "10.0.201.0/24"
