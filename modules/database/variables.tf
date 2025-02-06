variable "name" {
  description = "The name of the dbaas_instance"
  type        = string
}

variable "user" {
  description = "The user of the dbaas_instance"
  type        = string
}

variable "password" {
  description = "The password of the dbaas_instance"
  type        = string
  sensitive   = true
}

variable "engine_name" {
  description = "The engine_name of the dbaas_instance"
  type        = string
}

variable "engine_version" {
  description = "The engine_version of the dbaas_instance"
  type        = string
}

variable "instance_type" {
  description = "The instance_type of the dbaas_instance"
  type        = string
}

variable "volume_size" {
  description = "The volume_size of the dbaas_instance"
  type        = number
}
