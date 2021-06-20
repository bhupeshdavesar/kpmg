resource "random_string" "str" {
  length  = 4
  special = false
}

resource "google_project" "project" {
  name              = "${var.project_name}"
  billing_account   = "${var.billing_account}"
  folder_id         = "${var.folder_id}"
  project_id        = "${lower(var.project_name)}-${lower(random_string.str.result)}"

 }



output "project_id" {
      value         = "${google_project.project.project_id}"
}
