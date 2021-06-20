variable "project_id" {
  description = "(Required) The project ID to create the application under"
  type        = string
}

variable "config" {
  description = "(Required) Region for the project."
  type        = string
}

variable "name" {
  description = "(Required) Display name of spannner instance."
  type        = string
}

variable "display_name" {
  description = "(Required) The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length."
  type        = string
}

variable "num_nodes" {
  description = "(Required) Numbers of nodes to allocated to the instance."
  type        = number
}
