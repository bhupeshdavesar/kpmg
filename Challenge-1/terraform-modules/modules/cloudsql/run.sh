#!/bin/sh
set -e

export TF_VAR_cloudsql_instance_name=$cloudsql_instance_name
export TF_VAR_project_id=$project_id

gcloud auth activate-service-account --project=$TF_VAR_project_id --key-file=$TF_VAR_credentials
gcloud services enable sqladmin.googleapis.com

terraform init
terraform plan -out=plan
terraform apply plan



echo "cleaning up..."
 rm -R .terraform
 rm -rf terraform.tfs*

echo "cleanup complete"
