resource "random_uuid" "uuid" {}

locals {
  random_uuid       = random_uuid.uuid.result
  subaccount_domain = lower("${var.subaccount_name}-${local.random_uuid}")
  subaccount_name   = var.subaccount_name
  subaccount_cf_org = substr(replace("${local.subaccount_domain}", "-", ""), 0, 32)
}


resource "btp_subaccount" "sa_dev_base" {
  name      = var.subaccount_name
  subdomain = join("-", ["sa-dev-base", random_uuid.uuid.result])
  region    = lower(var.region)
}

# Fetch all available environments for the subaccount
data "btp_subaccount_environments" "all" {
  subaccount_id = btp_subaccount.sa_dev_base.id
}

# Take the landscape label from the first CF environment if no environment label is provided
resource "terraform_data" "cf_landscape_label" {
  input = [for env in data.btp_subaccount_environments.all.values : env if env.service_name == "cloudfoundry" && env.environment_type == "cloudfoundry"][0].landscape_label
}

# Create the Cloud Foundry environment instance
resource "btp_subaccount_environment_instance" "cfenv_dev_base" {
  subaccount_id    = btp_subaccount.sa_dev_base.id
  name             = local.subaccount_cf_org
  environment_type = "cloudfoundry"
  service_name     = "cloudfoundry"
  plan_name        = var.cf_plan_name
  landscape_label  = terraform_data.cf_landscape_label.output

  parameters = jsonencode({
    instance_name = local.subaccount_cf_org
  })
}
