resource "google_spanner_database" "database" {
  project  = var.project_id
  instance = var.spanner_instance_name
  name     = var.name
  ddl      = var.ddl

  encryption_config {
    kms_key_name = var.kms_key_name
  }


  timeouts {
    create = "5m"
    update = "5m"
    delete = "5m"
  }

  deletion_protection = var.deletion_protection

}
