output "id" {
  value       = join("", google_project_iam_custom_role.default.*.id)
  description = "The ID of the role"
}

output "name" {
  value       = join("", google_project_iam_custom_role.default.*.name)
  description = "The name of the role"
}
