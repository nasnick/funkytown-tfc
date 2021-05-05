variable "org" {
  type        = string
  description = "TFC organization"
  default     = "funkytown"
}

variable "token" {
  type        = string
  description = "TFC authentication token"
}

variable "tf_version" {
  type        = string
  description = "Workspace terraform core version"
}

// Now done automatically via Doormat
// variable "AWS_ACCESS_KEY_ID" {
//   type = string
// }

// variable "AWS_SECRET_ACCESS_KEY" {
//   type = string
// }

variable "GOOGLE_APPLICATION_CREDENTIALS" {
  type        = string
  description = "Google application credentials in json"
}

variable "GOOGLE_CREDENTIALS" {
  type        = string
  description = "Google application credentials in json"
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}

variable "ARM_CLIENT_ID" {
  type        = string
  description = "Azure user ID"
}

variable "ARM_CLIENT_SECRET" {
  type        = string
  description = "Azure secret"
}

variable "ARM_TENANT_ID" {
  type        = string
  description = "Azure tenant ID"
}

//// Sentinel policy set addition
//
variable "policy_organization" {
  type        = string
  description = "Policy organization in TFC"
}

variable "policy_repository" {
  type        = string
  description = "Repository which stores policy sets"
}

variable "policy_repository_branch" {
  type        = string
  description = "Branch to use in policy repository"
}

//// oauth connectivity
//
variable "tfx_organization" {
  type        = string
  description = "TFX organisation"
}
