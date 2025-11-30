#main.tf
terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "5.42.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = var.gcp_region
  storage_class = "STANDARD"
  project       = var.gcp_project_id
  uniform_bucket_level_access = true
}
