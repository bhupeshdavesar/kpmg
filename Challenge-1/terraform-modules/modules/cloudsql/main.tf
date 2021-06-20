provider "google" {
 credentials = "${var.credentials}"
 region      = "${var.region}"
 project     = "${var.project_id}"
}

module "cloudsql" {
 source = "./gcp-cloudsql"
 cloudsql_instance_name = "${var.cloudsql_instance_name}"
}
