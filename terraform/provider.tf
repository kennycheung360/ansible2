provider "google" {
  # credentials = file("sa2.json")
  project     = "mb-internal-srv-tst"
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

