terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 4043252
  api_key = "NRAK-SAUZ5U1N63CL7D2V0SZ35JS3CXE"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}