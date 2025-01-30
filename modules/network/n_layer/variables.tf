variable "type" {
  description = "Layer type"
  type        = string
  validation {
    condition     = var.type == "web" || var.type == "app" || var.type == "data"
    error_message = "The layer type must be web or app"
  }
}

variable "prefix" {
  description = "The prefix of name of the instances"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_description" {
  description = "The description for the VPC"
  type        = string
}

variable "subnetpool_name" {
  description = "The name of the subnetpool"
  type        = string
}

variable "subnetpool_cidr" {
  description = "CIDR block for the subnetpool"
  type        = string
}

variable "subnetpool_type" {
  description = "The type of the subnetpool"
  type        = string
}

variable "subnets" {
  type = map(object({
    name        = string
    description = optional(string)
    }
  ))
}
