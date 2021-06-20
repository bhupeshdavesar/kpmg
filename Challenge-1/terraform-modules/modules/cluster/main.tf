data "google_compute_network" "network" {
  provider = google
  name    = var.network
  project = local.network_project_id
}

data "google_compute_subnetwork" "subnetwork" {
  provider = google
  name    = var.subnetwork
  region  = var.location
  project = var.project_id
}

resource "google_container_cluster" "cluster" {
  provider           = google-beta
  name               = var.name
  description        = var.description
  project            = var.project_id
  location           = var.location
  network            = data.google_compute_network.network.self_link
  subnetwork         = data.google_compute_subnetwork.subnetwork.self_link
  remove_default_node_pool  = true
  initial_node_count        = 2
  }
