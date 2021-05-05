# terraform-tfe-agent-pool
Terraform child module to manage Terraform Cloud/Enterprise agent pool.
Remember that Terraform Cloud is an implementation of TFE.

## Relevant Requirements & Prerequisites
* AWS credentials
* TFC account with organization owner privileges
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
| pool_name | string | Name of the agent pool to create |
| organization | string | Name of the organization in which to create the agent pool |
| tfe_agent_token_description | string | Description to add to the creation of the token - helps UI consumption |
<p>&nbsp;</p>

## Optional Inputs
* None
<p>&nbsp;</p>

## Outputs
| Name | Description |
| - | -- |
| tap-tap-main-pool_id | TF Agent Pool: Agent pool ID |
| tap-tap-main-pool_name | TF Agent Pool: Agent pool name |
| tap-tat-main-id | TF Agent Pool: TF Agent Token - Agent pool token id |
| tap-tat-main-token | TF Agent Pool: TF Agent Token - Token material to provide this to the docker run or equivalent |


