variable "folder_name" {
	description = "The name of the folder to create"
}

# pattern "organizations/<org_id>" or "folders/<folder_id>"
variable "folder_parent" {
	description = "The org_id or folder_id under folder to be created"
}
