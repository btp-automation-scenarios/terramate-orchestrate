variable "cf_api_url" {
  type        = string
  description = "The API endpoint of the Cloud Foundry environment."
}

variable "cf_org_id" {
  type        = string
  description = "The Cloud Foundry landscape (format example eu10-004)."
}

variable "cf_space_managers" {
  type        = list(string)
  description = "List of managers for the Cloud Foundry space."
  default     = []
}

variable "cf_space_developers" {
  type        = list(string)
  description = "List of developers for the Cloud Foundry space."
  default     = []
}

variable "cf_space_name" {
  type        = string
  description = "The name of the Cloud Foundry space."
  default     = "dev"
}