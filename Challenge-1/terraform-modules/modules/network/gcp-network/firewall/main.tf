resource "google_compute_firewall" "allow-internal" {
  name    = "fw-allow-internal-${random_id.id.hex}"
  network = "${var.network_self_link}"

  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  source_ranges = [
    "${var.ip_ranges}"
      ]
}

resource "google_compute_firewall" "allow-http" {
  name    = "fw-allow-http-${random_id.id.hex}"
  network = "${var.network_self_link}"

allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"]
}

resource "google_compute_firewall" "allow-bastion" {
  name    = "fw-allow-bastion-${random_id.id.hex}"
  network = "${var.network_self_link}"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  }

  resource "random_id" "id" {
    byte_length = 4

  }
