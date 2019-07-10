#!/bin/bash

# Set environment variables needed by Terraform
. $1/gke_vars.sh $1

terraform import google_container_cluster.jx-cluster $TF_VAR_project/$TF_VAR_location/jx-cluster
terraform import google_container_node_pool.jx_cluster_nodes $TF_VAR_project/$TF_VAR_location/jx-cluster/jx-cluster-pool

terraform apply

gcloud container clusters get-credentials jx-cluster --zone $TF_VAR_location --project $TF_VAR_project