variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "user_ids" {
  description = "Account IDs that are allowed to: read, execute SQL, view schema"
  type        = list(string)
}

variable "spanner_instance_name" {
  description = "spanner instance name to which database reader permission is granted"
  type        = string
}

variable "spanner_database_name" {
  description = "spanner database name to which database reader permission is granted"
  type        = string
}
