variable "globalaccount" {
  description = "Name of the global account"
  type        = string
}

variable "subaccount_name" {
  description = "Name of the subaccount"
  type        = string
  default     = "subacount-dev"
}

variable "region" {
  description = "Region of the subaccount"
  type        = string
  default     = "us10"
}

variable "cf_plan_name" {
  description = "Name of the Cloud Foundry plan"
  type        = string
  default     = "standard"
}
