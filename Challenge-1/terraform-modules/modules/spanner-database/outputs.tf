output name {
  description = "The name of the database, this can be used in database 'data' blocks to refer to this database"
  value       = google_spanner_database.database.name
}
output spanner_instance_name {
  description = "The name of spanner instance"
  value       = google_spanner_database.database.instance
}
