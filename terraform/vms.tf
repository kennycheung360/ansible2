locals {
  vms = {
    "vm-europe-west4-a" = "europe-west4-a"
    "vm-europe-west4-b" = "europe-west4-b"
    "vm-europe-west4-c" = "europe-west4-c"
  }
}

module "vm" {
  source   = "./modules/vm"
  for_each = local.vms

  name                  = each.key
  zone                  = each.value
  project_id            = var.project_id
  machine_type          = "e2-micro"
  service_account_email = "245523438165-compute@developer.gserviceaccount.com"

  # Primary network
  network    = "default"
  subnetwork = "default"

  # Secondary network
  secondary_network    = "services-nl-network"
  secondary_subnetwork = "enum-euwe4"
}

output "vm_external_ips" {
  description = "External IPs of the VMs"
  value = {
    for name, vm in module.vm : name => vm.external_ip
  }
}

output "vm_internal_ips" {
  description = "Internal IPs of the VMs"
  value = {
    for name, vm in module.vm : name => vm.internal_ip
  }
}

