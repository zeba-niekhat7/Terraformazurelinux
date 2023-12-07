variable "resourceGroup"         {}
variable "vmName"                {}
variable "imagePublisher"        {}
variable "imageOffer"            {}
variable "imageSKU"              {}
variable "imageVersion"          {}
variable "location"              {}
variable "vnet"                  {}
variable "subnet"                {}
variable "vnetRG"                {}
variable "adminUser"             {
  default = "rheladmin"
}
variable "keyVault"              {}
variable "keyVaultRG"            {}
variable "storageAccount"        {}
variable "vmSize"                {}
variable "adDomain"              {}
variable "availabilityZone"      {}
variable "dataDisks"             {
  type = list(object({
    storageType = string
    diskName = string
    createOption = string
    diskSize = number
    lun = number
  }))
  
}
# Mandatory tags variable
variable "provisionedBy"         {
  default = "terraform"
}
variable "classOfBusiness"       {}	
variable "applicationName"	     {}
variable "dataClassification"    {} 	
variable "businessImpact"        {}	
variable "operatingEnvironment"  {}	
variable "securityZone"          {}	
variable "costCenter"            {}	
variable "supportGroup"          {}
#Optional tags
variable "backUpPlan"            {}

variable "KEYVAULT_ARM_SUBSCRIPTION_ID"   {}
variable "KEYVAULT_ARM_TENANT_ID"         {}
variable "KEYVAULT_ARM_CLIENT_ID"         {}
variable "KEYVAULT_ARM_CLIENT_SECRET_ID"  {}
variable "RESOURCE_ARM_SUBSCRIPTION_ID"   {}
variable "RESOURCE_ARM_TENANT_ID"         {}
variable "RESOURCE_ARM_CLIENT_ID"         {}
variable "RESOURCE_ARM_CLIENT_SECRET_ID"  {}
