# //// outputs.tf root module terraform configuration
# //// Nomenclature: <a>-<b>-<c>-<e>-<f>-<g>-<h>-<i>
# //// where
# //// a = 'What is the function of this cfg?'
# //// b = Abbreviated underlying/child module name
# //// c = Reasonably free text description in camelCase
# //// then the child module output name
# //// d = abbreviated linked resource abbreviation (some resources in a mod are only there to support a main resource)
# //// e = abbreviated resource
# //// f = resource name
# //// g = resource parameter to output
# //// h = resource subparameter if applicable
# //
# //// Network pool
# //
# output "tfx-ttap-tfc_agent_pool-network_tap-tap-main-pool_id" {
#   value       = module.agent-pool-net.tap-tap-main-pool_id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the network team: Agent pool ID"
# }

# output "tfx-ttap-tfc_agent_pool-network_tap-tap-main-pool_name" {
#   value       = module.agent-pool-net.tap-tap-main-pool_name
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the network team: Agent pool name"
# }

# output "tfx-ttap-tfc_agent_pool-network_tap-tat-main-id" {
#   value       = module.agent-pool-net.tap-tat-main-id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the network team: Agent pool token ID"
# }

# output "tfx-ttap-tfc_agent_pool-network_tap-tat-main-token" {
#   value       = module.agent-pool-net.tap-tat-main-token
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the network team: Agent token material: SENSITIVE"
#   sensitive = true
# }

# //// Services pool
# //
# output "tfx-ttap-tfc_agent_pool-services_tap-tap-main-pool_id" {
#   value       = module.agent-pool-svc.tap-tap-main-pool_id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the services team: Agent pool ID"
# }

# output "tfx-ttap-tfc_agent_pool-services_tap-tap-main-pool_name" {
#   value       = module.agent-pool-svc.tap-tap-main-pool_name
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the services team: Agent pool name"
# }

# output "tfx-ttap-tfc_agent_pool-services_tap-tat-main-id" {
#   value       = module.agent-pool-svc.tap-tat-main-id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the services team: Agent pool token ID"
#   sensitive = true
# }

# output "tfx-ttap-tfc_agent_pool-services_tap-tat-main-token" {
#   value       = module.agent-pool-svc.tap-tat-main-token
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the services team: Agent token material: SENSITIVE"
#   sensitive = true
# }

# //// Security pool
# //
# output "tfx-ttap-tfc_agent_pool-security_tap-tap-main-pool_id" {
#   value       = module.agent-pool-sec.tap-tap-main-pool_id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the security team: Agent pool ID"
# }

# output "tfx-ttap-tfc_agent_pool-security_tap-tap-main-pool_name" {
#   value       = module.agent-pool-sec.tap-tap-main-pool_name
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the security team: Agent pool name"
# }

# output "tfx-ttap-tfc_agent_pool-security_tap-tat-main-id" {
#   value       = module.agent-pool-sec.tap-tat-main-id
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the security team: Agent pool token ID"
#   sensitive = true
# }

# output "tfx-ttap-tfc_agent_pool-security_tap-tat-main-token" {
#   value       = module.agent-pool-sec.tap-tat-main-token
#   description = "Terraform Cloud/Enterprise [terraform-tfe-agent-pool] TFC agent pool for the security team: Agent token material: SENSITIVE"
#   sensitive = true
# }

