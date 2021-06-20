#!/bin/sh
set -e
export TF_VAR_region_sub=$subnet_region_list
export TF_VAR_vpcname=customvpc

terraform init
terraform plan -out=plan
terraform apply plan

echo "network setup complete"

echo "cleaning up..."
 rm -R .terraform
 rm -rf terraform.tfs*

echo "cleanup complete"
