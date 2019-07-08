#!/bin/sh

export TF_VAR_credentials=$1/jx-cluster-owner.json
echo $TF_VAR_credentials

terraform apply -var-file="$1/jx-gke.tfvars"
