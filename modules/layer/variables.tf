variable "prefix" {
  description = "The prefix of name of the instances"
  type        = string
}

variable "type" {
  description = "Layer type"
  type        = string
  validation {
    condition     = var.type == "web" || var.type == "app"
    error_message = "The layer type must be web or app"
  }
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

variable "ssh_key_name" {
  description = "The SSH key pair zone of the instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID of the instance"
  type        = string
}

variable "qtd_instances" {
  description = "The quantity of instances"
  type        = number
  default     = 1
}
