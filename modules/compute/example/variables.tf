data "mgc_network_vpc" "vpc" {
  id = "971c798c-c788-4166-b051-2f3f850c7858"
}

variable "prefix" {
  default = "exemplo-layer"
}

variable "type" {
  default = "web"
}


variable "api_key" {
  description = "API Key"
  type        = string
  sensitive   = true
}

variable "machine_type" {
  description = "The machine type of the instance"
  type        = string
  default     = "BV1-1-10"
}

variable "image" {
  description = "The image of the instance"
  type        = string
  default     = "cloud-ubuntu-24.04 LTS"
}

variable "vpc_id" {
  description = "The VPC ID of the instance"
  type        = string
  default     = "<VPC_ID>"
}

variable "qtd_instances" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}
