terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"  # Adjust version as needed
    }
  }

  required_version = ">= 0.12"
}
