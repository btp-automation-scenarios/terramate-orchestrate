// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

output "cf_api_url" {
  value = "${jsondecode(btp_subaccount_environment_instance.cfenv_dev_base.labels)["API Endpoint"]}"
}
output "cf_org_id" {
  value = btp_subaccount_environment_instance.cfenv_dev_base.platform_id
}
