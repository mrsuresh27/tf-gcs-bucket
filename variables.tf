#variables.tf

variable "gcp_project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region for the bucket"
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}
