variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "availability_zone_list" {
  description = "The availabilities zones of the instances"
  type        = list(string)
  default = [
    "br-se1-a",
    "br-se1-b",
    "br-se1-c"
  ]
}

variable "machine_type" {
  description = "The machine type of the instance"
  type        = string
}

variable "image" {
  description = "The image of the instance"
  type        = string
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
  validation {
    condition     = var.qtd_instances == 1 || var.qtd_instances == 2
    error_message = "The quantity of instances must be 1 or 2"
  }
}
