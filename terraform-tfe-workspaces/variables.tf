variable "workspace_name" {
  type        = string
  description = "Workspace name"
}
variable "org" {
  type        = string
  description = "Workspace organization"
}
variable "auto_apply" {
  type        = bool
  description = "Set whether to auto or manual apply"
}
variable "terraform_version" {
  type        = string
  description = "Set terraform core version to run in the workspace"
}

variable "working_directory" {
  type        = string
  description = "Set the default working directory"
}

variable "vcs_repo" {
    type        = string
  description = "Set the default VCS repo"
}