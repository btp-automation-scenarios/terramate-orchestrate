input "cf_api_url" {
  backend       = "default"
  from_stack_id = "ca4662d3-b75d-4290-9842-5bb8ef924d97"
  value         = outputs.cf_api_url.value
  mock          = "https://api.cf.ap21.hana.ondemand.com"
}

input "cf_org_id" {
  backend       = "default"
  from_stack_id = "ca4662d3-b75d-4290-9842-5bb8ef924d97"
  value         = outputs.cf_org_id.value
  mock          = "917f57a1-8fee-43b3-b3a8-4bb4ce8259ab"
}
