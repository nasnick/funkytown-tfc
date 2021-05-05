//// agent pool set up
//
module "agent-pool-net" {
  source                      = "app.terraform.io/funkytown/agent-pool/tfe"
  version                     = "1.0.1"
  organization                = "funkytown"
  pool_name                   = "pool-net"
  tfe_agent_token_description = "pool-net-token"
}

module "agent-pool-svc" {
  source                      = "app.terraform.io/funkytown/agent-pool/tfe"
  version                     = "1.0.1"
  organization                = "funkytown"
  pool_name                   = "pool-svc"
  tfe_agent_token_description = "pool-svc-token"
}

module "agent-pool-sec" {
  source                      = "app.terraform.io/funkytown/agent-pool/tfe"
  version                     = "1.0.1"
  organization                = "funkytown"
  pool_name                   = "pool-sec"
  tfe_agent_token_description = "pool-sec-token"
}

