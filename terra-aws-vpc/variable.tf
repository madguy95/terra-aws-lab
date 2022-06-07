variable "region" {
  type        = string
  description = "Region workspace"

  validation {
    condition     = contains(["us-east-1", "us-east-2"], var.instance_type)
    error_message = "Value not allow."
  }
}