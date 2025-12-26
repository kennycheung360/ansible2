provider "google" {
  # credentials = file("sa2.json")
  project     = var.project_id
  region      = "europe-west4"
  zone        = "europe-west4-a"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  backend "gcs" {
    bucket      = "kennytestbucket"
    prefix      = "terraform/state"
    # credentials = "sa2.json"
  }
}

