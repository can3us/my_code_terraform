variable "container_name" {
  description = "containers name"
  type        = string
  default     = "Alta3ResearchWebService"
}

variable "internal_port" {
  description = "Internal port of the container"
  type        = number
  default     = 9876
}

variable "external_port" {
  description = "External port on the container"
  type        = number
  default     = 5432
}
