resource "google_spanner_database_iam_binding" "database_user" {
  project  = var.project_id
  instance = var.spanner_instance_name
  database = var.spanner_database_name
  role     = "roles/spanner.databaseReader"
  members  = var.user_ids
}
