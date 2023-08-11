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
  api_token = "00-gPaPhk7N9r3EzCUhjlHTYgcDodONsxodm5-iIz2"
}

# USERS
