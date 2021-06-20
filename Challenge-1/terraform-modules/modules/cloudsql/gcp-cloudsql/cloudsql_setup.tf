resource "random_string" "str" {
  length  = 4
  special = false
}

resource "google_sql_database_instance" "master" {
  name = "${var.cloudsql_instance_name}-${lower(random_string.str.result)}"
  database_version = "MYSQL_5_6"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"


  ip_configuration = [
      {
        ipv4_enabled = "true"
        authorized_networks = [
          {
            name  = "AuthorizedNetwork"
            value = "0.0.0.0/0"
          }
        ]
      }
    ]
  }
}

resource "google_sql_database" "sampledb" {
  name      = "${google_sql_database_instance.master.name}"
  instance  = "${var.cloudsql_instance_name}-${lower(random_string.str.result)}"
}

resource "google_sql_user" "users" {
  name     = "demo"
  instance = "${google_sql_database_instance.master.name}"
  password = "demo"
}
