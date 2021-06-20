provider "google" {
 credentials = "${var.credentials}"
 project     = "${var.project_id}"
}

module "gcp-folder" {
  source     = "./gcp-folder"
  folder_parent = "${var.folder_parent}"
  folder_name= "${var.folder_name}"
}
