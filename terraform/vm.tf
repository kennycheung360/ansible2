# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "projects/mb-internal-srv-tst/zones/europe-west4-a/instances/instance-20251215-184729"
resource "google_compute_instance" "instance-20251215-184729" {
  allow_stopping_for_update = null
  can_ip_forward            = false
  deletion_protection       = false
  description               = null
  desired_status            = null
  enable_display            = false
  guest_accelerator         = []
  hostname                  = null
  labels = {
    goog-ops-agent-policy = "v2-x86-template-1-4-0"
  }
  machine_type = "e2-micro"
  metadata = {
    enable-osconfig = "TRUE"
  }
  metadata_startup_script = null
  min_cpu_platform        = null
  name                    = "instance-20251215-184729"
  project                 = "mb-internal-srv-tst"
  resource_policies       = []
  tags                    = []
  zone                    = "europe-west4-a"
  boot_disk {
    auto_delete             = true
    device_name             = "instance-20251215-184729"
    disk_encryption_key_raw = null # sensitive
    kms_key_self_link       = null
    mode                    = "READ_WRITE"
    source                  = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/zones/europe-west4-a/disks/instance-20251215-184729"
    initialize_params {
      image                 = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-12-bookworm-v20251209"
      labels                = {}
      resource_manager_tags = {}
      size                  = 10
      type                  = "pd-balanced"
    }
  }
  confidential_instance_config {
    enable_confidential_compute = false
  }
  network_interface {
    internal_ipv6_prefix_length = 0
    ipv6_address                = null
    network                     = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/global/networks/default"
    network_ip                  = "10.164.0.35"
    nic_type                    = null
    queue_count                 = 0
    stack_type                  = "IPV4_ONLY"
    subnetwork                  = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/default"
    subnetwork_project          = "mb-internal-srv-tst"
    access_config {
      nat_ip                 = "34.7.150.9"
      network_tier           = "PREMIUM"
      public_ptr_domain_name = null
    }
  }
  network_interface {
    internal_ipv6_prefix_length = 0
    ipv6_address                = null
    network                     = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/global/networks/services-nl-network"
    network_ip                  = "10.10.33.239"
    nic_type                    = null
    queue_count                 = 0
    stack_type                  = "IPV4_ONLY"
    subnetwork                  = "https://www.googleapis.com/compute/v1/projects/mb-internal-srv-tst/regions/europe-west4/subnetworks/enum-euwe4"
    subnetwork_project          = "mb-internal-srv-tst"
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    automatic_restart           = true
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
  }
  service_account {
    email  = "245523438165-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
  timeouts {
    create = null
    delete = null
    update = null
  }
}
