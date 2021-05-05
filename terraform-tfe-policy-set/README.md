# terraform-tfe-policy-set
Module to deploy sentinel policies into TFE

## Relevant Requirements & Prerequisites
* Sufficient TFE organisation admin access
* TFE OAuth Token ID
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
| policy_name | string | TFE policy name |
| policy_description | string | TFE policy description |
| policy_organization | string | TFE policy organization |
| global | string | TFE global |
| policy_path | string | TFE policy path |
| policy_repository | string | TFE policy repository |
| policy_repository_branch | string | TFE policy repository branch |
| oauth_token_id | string | TFE OAuth token ID |
<p>&nbsp;</p>

## Optional Inputs
| Name | Type | Description | Default Value |
| - | -- | --- | - |
| workspace_ids | list | TFE workspace IDs | [] |
<p>&nbsp;</p>

## Outputs
* None
