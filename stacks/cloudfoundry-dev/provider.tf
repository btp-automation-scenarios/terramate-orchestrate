terraform {
  required_providers {
    cloudfoundry = {
      source  = "sap/cloudfoundry"
      version = "1.0.0-rc1"
    }
  }
}

# This will only work if we know the region in advance
provider "cloudfoundry" {
  api_url = var.cf_api_url
}