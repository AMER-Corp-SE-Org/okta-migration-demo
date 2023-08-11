terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.1.0"
    }
  }
}

# Configure the Okta Provider
provider "okta" {
  org_name  = "trial-9733957"
  base_url  = "okta.com"
}

