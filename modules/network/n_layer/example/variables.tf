variable "type" {
  description = "Layer type"
  type        = string
  default     = "app"
}

variable "prefix" {
  description = "The prefix of name of the instances"
  type        = string
  default     = "teste"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "example"
}

variable "vpc_description" {
  description = "The description for the VPC"
  type        = string
  default     = "vpc created by Terraform"
}

variable "subnetpool_name" {
  description = "The name of the subnetpool"
  type        = string
  default     = "example"
}

variable "subnetpool_cidr" {
  description = "CIDR block for the subnetpool"
  type        = string
  default     = "192.168.143.0/24"
}

variable "subnetpool_type" {
  description = "The type of the subnetpool"
  type        = string
  default     = "default"
}

variable "subnets" {
  type = map(object({
    name          = string
    description   = optional(string)
    subnetpool_id = string
    vpc_id        = string
    }
  ))
}


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
