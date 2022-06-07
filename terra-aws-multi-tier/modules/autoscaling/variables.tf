variable "project" {
  type = string
}

variable "vpc" {
  type = any
}

variable "instance_type" {
  type        = string
  description = "Instance type of the EC2"

  validation {
    condition     = contains(["t2.micro"], var.instance_type)
    error_message = "Value not allow."
  }
}

variable "sg" {
  type = any
}

variable "db_config" {
  type = object(
    {
      user     = string
      password = string
      database = string
      hostname = string
      port     = string
    }
  )
}
