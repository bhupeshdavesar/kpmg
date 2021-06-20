
variable "project_id" {}
variable "region" {
	description = "The redion of network."
}
variable "credentials" {
	description = "The credentials of service account"
	#default = "sk-kubernetes-codelab-terraform-runner.json"
}

variable "vpcname" {
	description = "The name of the VPC"
}

variable "region_sub" { 
	description = "The region list/subnet list"
	type = "list"
}
