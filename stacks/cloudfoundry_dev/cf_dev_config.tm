input "cf_api_url" {
  backend       = "default"
  from_stack_id = "ca4662d3-b75d-4290-9842-5bb8ef924d97"
  value         = outputs.cf_api_url.value
}

input "cf_org_id" {
  backend       = "default"
  from_stack_id = "ca4662d3-b75d-4290-9842-5bb8ef924d97"
  value         = outputs.cf_org_id.value
}
