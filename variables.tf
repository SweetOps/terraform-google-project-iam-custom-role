variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "A human-readable description for the role."
}

variable "project" {
  type        = string
  default     = null
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "role_stage" {
  type        = string
  default     = "GA"
  description = "The current launch stage of the role. Possible values: `ALPHA`, `BETA`, `GA`, `DEPRECATED`, `DISABLED`, `EAP`"
}

variable "permissions" {
  type        = list(string)
  description = "The list of names of the permissions this role grants when bound in an IAM policy."
}
