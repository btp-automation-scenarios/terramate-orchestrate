variable "globalaccount" {
    description = "Name of the global account"
    type        = string
}

variable "subaccount_name" {
  description = "Name of the subaccount"
  type        = string
  default     = "subacoount-dev"
}

variable "region" {
    description = "Region of the subaccount"
    type        = string
    default     = "us10"
}
