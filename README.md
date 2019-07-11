# cluster
Terraform configuration for Jenkins X cluster.

## GKE Documentation
* https://www.terraform.io/docs/providers/google/r/container_cluster.html
* https://cloud.google.com/docs/authentication/production

## Setup process
* helm repo add jenkins-x http://chartmuseum.jenkins-x.io (if necessary)
* Change to terraform folder for environment in organization repository and run ./local-apply.sh
* Run command to add cluster to kubectl config (gcloud)
* Change to repository for boot config and run jx boot
