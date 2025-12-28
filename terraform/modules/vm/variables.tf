variable "name" {
  description = "Name of the VM instance"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the VM in"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the VM"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "The boot disk image"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "disk_size" {
  description = "The boot disk size in GB"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The boot disk type"
  type        = string
  default     = "pd-balanced"
}

variable "network" {
  description = "The primary network"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "The primary subnetwork"
  type        = string
  default     = "default"
}

variable "secondary_network" {
  description = "The secondary network (optional)"
  type        = string
  default     = null
}

variable "secondary_subnetwork" {
  description = "The secondary subnetwork (optional)"
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "The service account email"
  type        = string
}

variable "labels" {
  description = "Labels to apply to the VM"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Network tags to apply to the VM"
  type        = list(string)
  default     = []
}

