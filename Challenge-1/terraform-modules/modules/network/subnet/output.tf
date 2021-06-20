output "ip_cidr_ranges" {
  value = "${google_compute_subnetwork.subnetwork-with-multiple-ranges.*.ip_cidr_range}"
}
