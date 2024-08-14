output "network_id" {
  description = "The ID of the VPC network."
  value       = google_compute_network.vpc_network.id
}

output "subnetwork_id" {
  description = "The ID of the created subnetwork."
  value       = google_compute_subnetwork.subnetwork.id
}

output "firewall_id" {
  description = "The ID of the created firewall rule."
  value       = google_compute_firewall.default.id
}
