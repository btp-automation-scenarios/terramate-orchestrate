stack {
  name        = "cloudfoundry-dev"
  description = "CF for BTP dev setup"
  tags        = ["cloudfoundry", "dev"]
  id          = "d5962b3f-3b79-412f-9970-93112741855a"
  after       = ["tag:subaccount:dev"]
}
