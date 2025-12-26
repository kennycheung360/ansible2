# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/default"
resource "google_compute_subnetwork" "default" {
  description                = null
  ip_cidr_range              = "10.164.0.0/20"
  ipv6_access_type           = null
  name                       = "default"
  network                    = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/global/networks/default"
  private_ip_google_access   = false
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "mb-internal-srv-tst"
  purpose                    = "PRIVATE"
  region                     = "europe-west4"
  role                       = null
  secondary_ip_range         = []
  stack_type                 = "IPV4_ONLY"
  timeouts {
    create = null
    delete = null
    update = null
  }
}

# __generated__ by Terraform from "projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/enum-euwe4"
resource "google_compute_subnetwork" "enum-euwe4" {
  description                = null
  ip_cidr_range              = "10.10.33.0/24"
  ipv6_access_type           = null
  name                       = "enum-euwe4"
  network                    = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/global/networks/services-nl-network"
  private_ip_google_access   = true
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "mb-internal-srv-tst"
  purpose                    = "PRIVATE"
  region                     = "europe-west4"
  role                       = null
  secondary_ip_range         = []
  stack_type                 = "IPV4_ONLY"
  timeouts {
    create = null
    delete = null
    update = null
  }
}

# __generated__ by Terraform from "projects/mb-internal-srv-tst/global/networks/services-nl-network"
resource "google_compute_network" "services-nl-network" {
  auto_create_subnetworks                   = false
  delete_default_routes_on_create           = false
  description                               = null
  enable_ula_internal_ipv6                  = false
  internal_ipv6_range                       = null
  mtu                                       = 0
  name                                      = "services-nl-network"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
  project                                   = "mb-internal-srv-tst"
  routing_mode                              = "REGIONAL"
  timeouts {
    create = null
    delete = null
    update = null
  }
}

# __generated__ by Terraform from "projects/mb-internal-srv-tst/global/networks/default"
resource "google_compute_network" "default" {
  auto_create_subnetworks                   = true
  delete_default_routes_on_create           = false
  description                               = "Default network for the project"
  enable_ula_internal_ipv6                  = false
  internal_ipv6_range                       = null
  mtu                                       = 0
  name                                      = "default"
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
  project                                   = "mb-internal-srv-tst"
  routing_mode                              = "REGIONAL"
  timeouts {
    create = null
    delete = null
    update = null
  }
}
