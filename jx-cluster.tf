provider "google" {
    credentials = "${file("../jx-owner.json")}"
    project = "ringed-rune-245515"
    region = "us-central1"
}

resource "google_container_cluster" "jx-cluster" {

}