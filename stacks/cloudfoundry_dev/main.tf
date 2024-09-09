resource "cloudfoundry_space" "dev_space" {
  name = var.cf_space_name
  org  = var.cf_org_id
}

resource "cloudfoundry_space_role" "space_developer" {
  for_each = toset(var.cf_space_developers)
  username = each.value
  type     = "space_developer"
  space    = cloudfoundry_space.dev_space.id
}

resource "cloudfoundry_space_role" "space_manager" {
  for_each = toset(var.cf_space_managers)
  username = each.value
  type     = "space_manager"
  space    = cloudfoundry_space.dev_space.id
}
