variable "project_id" {
  type        = string
  description = "The ID of the project to which resources will be applied."
}

variable "region" {
  type        = string
  description = "The region in which resources will be applied."
}

variable "org_id" {
  type        = string
  description = "The organization ID to which resources will be applied."
  default     = "override in terraform.tfvars"
}

variable "vm" {
  type = object({
    zone       = string
    subnetwork = string
  })
  description = "VM spec - zone and subnetwork. Null to disable"
  default     = null
}