variable "project_id" {
	 description = "The ID of the project in which the cloudSQL will be created."
}
variable "region" {
	description = "The region of service"
}
variable "credentials" {
	description = "The credentials of service account"
	#default = "sk-kubernetes-codelab-terraform-runner.json"
}

variable "cloudsql_instance_name" {
	description = "The name of the SQL instance"
}
