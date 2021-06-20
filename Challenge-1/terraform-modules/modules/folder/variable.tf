variable "folder_name" {
	description = "The name of the folder to create"
}

# pattern "organizations/<org_id>" or "folders/<folder_id>"
variable "folder_parent" {
	description = "The org_id or folder_id under folder to be created"
}

variable "project_id" {
	description = "The project ID to deploy to"
}

variable "credentials" {
	description = "The credentials of service account"
	#default = "sk-kubernetes-codelab-terraform-runner.json"
}
