
variable "prefix" {
  type = string
}
variable "resource_group_location" {
  type        = string
  default     = "South India"
  description = "Location of the resource group."
}


variable "azure_client_id" {
  description = "Azure AD Client ID for service principal"
  type        = string
  sensitive   = true
}

variable "azure_client_secret" {
  description = "Azure AD Client Secret for service principal"
  type        = string
  sensitive   = true
}

variable "azure_tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
  sensitive   = true
}

variable "azure_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}
