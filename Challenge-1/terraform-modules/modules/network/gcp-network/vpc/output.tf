

output "vpcname" {
  value = "${google_compute_network.custom_vpc_network.name}"
}

output "vpcid" {
  value = "${google_compute_network.custom_vpc_network.id}"
}

output "out_custom_vpc_network_self_link" {
   value = "${google_compute_network.custom_vpc_network.self_link}"
}
