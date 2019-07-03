provider "google" {
    credentials = "${file("${var.credentials}")}"
    project = "${var.project}"
    region = "${var.region}"
}

data "google_container_engine_versions" "current_location" {
  location           = "${var.location}"
}

resource "google_container_cluster" "jx-cluster" {
    name = "jx-cluster"
    location = "${var.location}"
    min_master_version = "${data.google_container_engine_versions.current_location.latest_master_version}"

    remove_default_node_pool = true
    initial_node_count = 1

    master_auth {
         client_certificate_config {
            issue_client_certificate = false
        }       
    }
}

resource "google_container_node_pool" "jx_cluster_nodes" {
    name = "jx-cluster-pool"
    location = "${var.location}"
    cluster = "${google_container_cluster.jx-cluster.name}"
    initial_node_count  = 3
    version = "${data.google_container_engine_versions.current_location.latest_master_version}"
 
    autoscaling {
        max_node_count = 5
        min_node_count = 3
    }

    node_config {
        preemptible       = false       
        machine_type      = "n1-standard-2"
        metadata          = {
            "disable-legacy-endpoints" = "true"
        }
        oauth_scopes      = [
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/service.management",
            "https://www.googleapis.com/auth/servicecontrol",
        ]
    }
 
}


variable "project" {
  
}

variable "region" {
  
}

variable "location" {

}

variable "credentials" {
  
}
