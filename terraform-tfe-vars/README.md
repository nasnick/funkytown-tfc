# terraform-tfe-vars
Terraform workspace variables module

## Relevant Requirements & Prerequisites
* TFE organisation access and workspace admin access; normally, this should be used by superusers to place variables in a workspace which might be fixed and unchangeable by users of the workspace.7
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
| key | string | Workspace variable key |
| value | string | Workspace variable value |
| category | string | Workspace variable category |
| workspace_id | string | Workspace ID |
<p>&nbsp;</p>

## Optional Inputs
| Name | Type | Description | Default Value |
| - | -- | --- | - |
| description | string | Description |  |
| sensitive | string | Workspace variable sensitivity | True |
<p>&nbsp;</p>

## Outputs
* None
