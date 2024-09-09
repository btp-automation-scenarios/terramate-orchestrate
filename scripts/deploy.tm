script "terraform" "deploy" {
  job {
    name        = "Terraform Deployment"
    description = "Initialize, validate, plan, and apply Terraform changes."
    commands = [
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-lock=false", {
        enable_sharing = true
      }],
      ["terraform", "apply", "-input=false", "-auto-approve", "  -lock-timeout=5m", "out.tfplan", {
        enable_sharing = true
      }],
    ]
  }
}
