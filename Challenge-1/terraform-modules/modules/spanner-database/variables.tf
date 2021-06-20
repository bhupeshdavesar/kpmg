variable project_id {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable name {
  description = "Name of the spanner database to create"
  type        = string
}

variable "ddl" {
  description = "An optional list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database"
  type        = list(string)
  default     = []
  //  ex: ddl = [
  //    "CREATE TABLE t1 (t1 INT64 NOT NULL) PRIMARY KEY(t1)",
  //    "CREATE TABLE t2 (t2 INT64 NOT NULL) PRIMARY KEY(t2)",
  //  ]
}

variable "deletion_protection" {
  description = "Whether or not to allow Terraform to destroy the Database"
  type        = bool
  default     = true
}

variable "kms_key_name" {
  description = "The full name of the key used to encrypt this table"
  type        = string
}

variable "spanner_instance_name" {
  description = "name of the spanner instance where database has to be created"
  type        = string
}
