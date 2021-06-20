#!/bin/sh
set -e
export TF_VAR_folder_name=$folder_name
export TF_VAR_folder_parent=$folder_parent
export TF_VAR_project_id=$admin_project_id

terraform init
terraform plan -out=plan
terraform apply plan
 echo "starting cleanup "
rm terraform.tfs*
rm -R .terraform
echo "Cleanup complete..."
