resource "google_spanner_instance" "instance" {
  project      = var.project_id
  config       = var.config
  name         = var.name
  display_name = var.display_name
  num_nodes    = var.num_nodes

  lifecycle {
    prevent_destroy = false
  }

}
