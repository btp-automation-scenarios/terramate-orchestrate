output "cf_api_url" {
  backend   = "default"
  value     = "${jsondecode(btp_subaccount_environment_instance.cfenv_dev_base.labels)["API Endpoint"]}"
  sensitive = false
}

output "cf_org_id" {
  backend   = "default"
  value     = btp_subaccount_environment_instance.cfenv_dev_base.platform_id
  sensitive = false
}
