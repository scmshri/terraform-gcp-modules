provider "google" {
  credentials = file(var.credentials_file)  # Path to your service account key file
  project     = var.project_id
  region      = var.region
}

resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "${var.network_name}-subnet"
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.subnet_cidr_range
  region        = var.region
  project       = var.project_id
}

resource "google_compute_firewall" "default" {
  name    = "${var.network_name}-firewall"
  network = google_compute_network.vpc_network.id
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  project       = var.project_id
}
