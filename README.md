# Terraform GCP VPC Module

This Terraform module creates a VPC network, a subnetwork, and a basic firewall rule in Google Cloud Platform (GCP).

## Inputs

- `project_id` (string) - The ID of the GCP project.
- `region` (string) - The GCP region where resources will be created.
- `network_name` (string) - The name of the VPC network.
- `subnet_cidr_range` (string) - The CIDR range for the subnetwork.
- `credentials_file` (string) - Path to the GCP service account credentials file.

## Outputs

- `network_id` - The ID of the created VPC network.
- `subnetwork_id` - The ID of the created subnetwork.
- `firewall_id` - The ID of the created firewall rule.

## Example Usage

```hcl
module "vpc" {
  source             = "./terraform-gcp-vpc-module"
  project_id         = "your-gcp-project-id"
  region             = "us-central1"
  network_name       = "my-vpc-network"
  subnet_cidr_range  = "10.0.1.0/24"
  credentials_file   = "/path/to/credentials.json"
}
