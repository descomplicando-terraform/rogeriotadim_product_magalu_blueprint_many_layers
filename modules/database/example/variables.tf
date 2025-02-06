variable "api_key" {
  description = "API Key"
  type        = string
  sensitive   = true
}

variable "name" {
  description = "The name of the dbaas_instance"
  type        = string
  default     = "dbaastest"
}

