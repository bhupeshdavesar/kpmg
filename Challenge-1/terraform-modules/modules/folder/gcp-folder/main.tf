resource "google_folder" "project-folder" {
  display_name      = "${var.folder_name}"
  parent            = "${var.folder_parent}"
}
