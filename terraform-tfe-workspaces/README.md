# terraform-tfe-workspaces
TFE/C(X) workspace creation

## Relevant Requirements & Prerequisites
* TFE credentials such that workspace creation capability is possible
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
| workspace_name | string | Workspace name |
| org | string | Workspace organization |
| auto_apply | bool | Set whether to auto or manual apply |
| terraform_version | string | Set terraform core version to run in the workspace |
<p>&nbsp;</p>

## Optional Inputs
* None
<p>&nbsp;</p>

## Outputs
| Name | Description |
| - | -- |
| tw-tw-main-id | TFE workspace main ID |
