resource "google_compute_network" "custom_vpc_network" {
  name                    = "${var.vpcname}"
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"

}
