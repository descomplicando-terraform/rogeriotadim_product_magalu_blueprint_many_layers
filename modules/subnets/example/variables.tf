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

variable "name" {
  description = "The name of the Subnet"
}

variable "cidr_block" {
  description = "The CIDR block for the Subnet"
}
