output "name" {
  description = "The name of the instance, this can be used in database 'data' blocks to refer to this instance"
  value       = google_spanner_instance.instance.name
}
