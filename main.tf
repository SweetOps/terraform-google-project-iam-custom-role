resource "google_project_iam_custom_role" "default" {
  count = module.this.enabled ? 1 : 0

  role_id     = module.this.id
  title       = module.this.id
  description = var.description
  permissions = var.permissions
  project     = var.project
  stage       = var.role_stage
}
