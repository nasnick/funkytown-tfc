terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "= 0.25.2"
    }
  }
  required_version = ">= 0.14"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "funkytown"
    workspaces {
      name = "hc-tfx-dev"
    }
  }
}

provider "tfe" {
  token = var.token
}
