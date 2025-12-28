output "instance_id" {
  description = "The instance ID"
  value       = google_compute_instance.vm.instance_id
}

output "name" {
  description = "The instance name"
  value       = google_compute_instance.vm.name
}

output "self_link" {
  description = "The self link of the instance"
  value       = google_compute_instance.vm.self_link
}

output "external_ip" {
  description = "The external IP address"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "internal_ip" {
  description = "The internal IP address"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "zone" {
  description = "The zone of the instance"
  value       = google_compute_instance.vm.zone
}

