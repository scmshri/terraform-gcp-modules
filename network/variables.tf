variable "project_id" {
  description = "The ID of the project where resources will be created."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_cidr_range" {
  description = "The CIDR range for the subnetwork."
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account key file."
  type        = string
}
