module "example_resource_group" {
  source  = "app.terraform.io/funkytown/resource-group/azurerm"
  version = "1.0.0"
  name        = "example-functionapp-rg"
  location    = "australiaeast"
  salary_id   = "m809808"
  environment = "Sandbox"
  app_owner   = "Nick Schofield"
  app_id      = "ID1010"
  squad_name  = "Cloud Compute"
  squad_code  = "1"
}