stack {
  name        = "cloudfoundry-test"
  description = "CF for BTP test setup"
  tags        = ["cloudfoundry", "test"]
  id          = "2695572b-9e31-45a7-86b0-04de76bdee95"
  after       = ["tag:subaccount:test", ]
}
