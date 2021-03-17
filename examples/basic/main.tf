module "label" {
  source    = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.24.1"
  namespace = "sweetops"
  stage     = "production"
  name      = "aweasome"
}

module "your_aweasome_role" {
  source = "git::https://github.com/SweetOps/terraform-google-service-account.git?ref=master"

  permissions = [
    "compute.disks.create",
    "compute.disks.delete",
    "compute.disks.get",
    "compute.disks.list",
    "compute.disks.use",
  ]

  context = module.label.context
}

module "your_aweasome_role_service_account" {
  source = "git::https://github.com/SweetOps/terraform-google-service-account.git?ref=master"

  roles = [module.your_aweasome_role.name, "roles/iam.serviceAccountUser"]

  context = module.label.context
}
