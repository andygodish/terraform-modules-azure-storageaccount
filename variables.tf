variable "rg_name" {
  type = string
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "primary_location" {
  type = string
}

variable "primary_location_abbr" {
  type = string
}

variable "project_group" {
  type = string
}

variable "project_name" {
  type = string
}

variable "project_env" {
  type = string
}

variable "tags" {
  description = "The tags to apply to resources"
  type        = map(string)
  default     = {}
}
