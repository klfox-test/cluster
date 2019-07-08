#!/bin/sh

export TF_VAR_credentials=$1/jx-cluster-owner.json
echo $TF_VAR_credentials

terraform destroy -var-file="$1/jx-gke.tfvars" -target=google_container_node_pool.jx_cluster_nodes
