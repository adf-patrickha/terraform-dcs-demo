#===============================================================================================================
# vCloud Director Provider definition, the latest version as of today is 2.4.0
#===============================================================================================================

terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.5.1"
    }
  }
}

provider "vcd" {
  user                 		= var.vcd_user
  password             		= var.vcd_pass
  org                  		= var.vcd_org
  vdc                     = var.vcd_vdc
  url                  		= var.vcd_url

  max_retry_timeout    		= "45" // Retry time for api
  allow_unverified_ssl 		= "true"
}
