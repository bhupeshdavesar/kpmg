resource "google_compute_subnetwork" "subnetwork-with-multiple-ranges" {
  count         = "${length(var.region_sub)}"
  name          = "${element(var.region_sub,count.index)}-${random_id.id.hex}-${count.index}"
  region        = "${element(var.region_sub,count.index)}"
  ip_cidr_range = "${cidrsubnet(var.ip_ranges_set_one,8,count.index)}"
  network       = "${var.network_self_link}"

}



resource "random_id" "id" {
  byte_length = 4
}
