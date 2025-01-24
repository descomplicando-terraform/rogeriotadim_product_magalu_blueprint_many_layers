variable "description" {
  description = "Description of the public IP"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the public IP will be created"
  type        = string
}
