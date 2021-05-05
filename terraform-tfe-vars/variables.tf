variable "key" {
  type = string
  description = "Workspace variable key"
}
variable "value" {
  type = string
  description = "Workspace variable value"
}
variable "category" {
  type = string
  description = "Workspace variable category"
}
variable "workspace_id" {
  type = string
  description = "Workspace ID"
}
variable "description" {
  type    = string
  description = "Description"
  default = ""
}
variable "sensitive" {
  type    = string
  description = "Workspace variable sensitivity"
  default = true
}
