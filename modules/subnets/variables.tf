variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "description" {
  description = "The description for the VPC"
  type        = string
  default     = "vpc created by Terraform"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "subnetpool_id" {
  description = "The CIDR block for the VPC"
}

variable "vpc_id" {
  description = "The CIDR block for the VPC"
}