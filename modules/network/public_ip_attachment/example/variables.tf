variable "api_key" {
  description = "API Key"
  type        = string
  sensitive   = true
}

variable "key_id" {
  description = "Key ID"
  type        = string
  sensitive   = true
}

variable "key_secret" {
  description = "Key Secret"
  type        = string
  sensitive   = true
}

variable "public_ip_id" {
  description = "Public IP ID"
  type        = string
}
variable "interface_id" {
  description = "Interface ID"
  type        = string
}