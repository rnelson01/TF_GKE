variable "project_id" {
  description = "sales-209522"
}

variable "region" {
  description = "region"
}

variable "owner" {
  description = "owner"
}

variable "deleteAfter" {
  description = "TTL"
}

variable "purpose" {
  description = "purpose"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"

}

output "region" {
  value       = var.region
  description = "region"
}
