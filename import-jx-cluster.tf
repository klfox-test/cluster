# google_container_cluster.jx-cluster:
resource "google_container_cluster" "jx-cluster" {
    additional_zones        = []
    cluster_autoscaling     = []
    cluster_ipv4_cidr       = "10.56.0.0/14"
    enable_kubernetes_alpha = false
    enable_legacy_abac      = false
    endpoint                = "104.154.47.117"
    id                      = "legsharp"
    initial_node_count      = 0
    instance_group_urls     = [
        "https://www.googleapis.com/compute/v1/projects/ringed-rune-245515/zones/us-central1-b/instanceGroups/gke-legsharp-default-pool-408321a9-grp",
    ]
    ip_allocation_policy    = [
        {
            cluster_ipv4_cidr_block       = "10.56.0.0/14"
            cluster_secondary_range_name  = "gke-legsharp-pods-1bdcbf52"
            create_subnetwork             = false
            node_ipv4_cidr_block          = "10.128.0.0/20"
            services_ipv4_cidr_block      = "10.122.0.0/20"
            services_secondary_range_name = "gke-legsharp-services-1bdcbf52"
            subnetwork_name               = ""
            use_ip_aliases                = true
        },
    ]
    location                = "us-central1-b"
    logging_service         = "logging.googleapis.com"
    master_version          = "1.12.8-gke.10"
    monitoring_service      = "monitoring.googleapis.com"
    name                    = "legsharp"
    network                 = "projects/ringed-rune-245515/global/networks/default"
    node_locations          = []
    node_version            = "1.12.8-gke.10"
    project                 = "ringed-rune-245515"
    resource_labels         = {
        "create-time" = "tue-jul-2-2019-15-18-24"
        "created-by"  = "kfox"
    }
    services_ipv4_cidr      = "10.122.0.0/20"
    subnetwork              = "projects/ringed-rune-245515/regions/us-central1/subnetworks/default"
    zone                    = "us-central1-b"

    addons_config {

        kubernetes_dashboard {
            disabled = true
        }

        network_policy_config {
            disabled = true
        }
    }

    master_auth {
        cluster_ca_certificate = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURERENDQWZTZ0F3SUJBZ0lSQUozNjgzdEZSQ3UzK1dVVVpvZzRncWd3RFFZSktvWklodmNOQVFFTEJRQXcKTHpFdE1Dc0dBMVVFQXhNa016QmpZMkZrT1RrdE56ZGlaUzAwTURKaUxXSXpOekl0TURBM04yUmpOalppTW1VMwpNQjRYRFRFNU1EY3dNakU0TVRneU5Wb1hEVEkwTURZek1ERTVNVGd5TlZvd0x6RXRNQ3NHQTFVRUF4TWtNekJqClkyRmtPVGt0TnpkaVpTMDBNREppTFdJek56SXRNREEzTjJSak5qWmlNbVUzTUlJQklqQU5CZ2txaGtpRzl3MEIKQVFFRkFBT0NBUThBTUlJQkNnS0NBUUVBbFUxaGl3WXdXbVVDYk5HVURMMzFaTEZNRHlUa0haby9KWHBIY2UvbAp0R2pVamtKS0lVWW5aeEk0UzB3MElEVDJRb3ZMdXh6K3hhSlNySFgwY04vanhmNUpwL01MVWZsSGc5aFhrbzJsCitSZlFYbkFtUm9wZysvT1VRczlMSHcrRlhKNHJPR0cxdzZxclF1TDFoTi9TWDBOWThKL01Ia002TXpnWWZhUEIKdC93ZlhhcDFRTTZGd3c5cjlSeklUVmM1ay9PMEJITG9TbitYbWxEenl3U05ENzJMMUVTZ0RHVGRzTGdtQW1uWApJbUVJS0dwN3JqeXBnb0dyWjRONHVuK29OMmw1Vkp4L0JmOU1tQTVoMld4Z2Z2R0kzZzV4Q1JzcnM3T3pyVkhrCmlXc3I2aGZQRnBYSklJcyttZ0ZJVnliUVF2c0ZTVGR2T3VPeUoxYUM2SHRMZ1FJREFRQUJveU13SVRBT0JnTlYKSFE4QkFmOEVCQU1DQWdRd0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBTkJna3Foa2lHOXcwQkFRc0ZBQU9DQVFFQQpWNXVXeXd4RjI0SEVqd3ZoME9UdklvM3AzMWZBWllOZElqMm9hU09valU0TExvUGJGRS9sNEFpeTJMeElqOWx1CkZZTUltWGNrdDJzQklGSHZiT0VoNnlEWWpzQUl1VWdSWU4wQnQreStxSGViWW96dGtHZS9yUVZCbUNnb2pmd1QKancyM0I2YXV3Z2hmMXhHMmZScml2OTRqcTRURzlkbzFSTDlsT1BtUVYzSkYxYTZ2ZlhCVmM0bzJkalBwRTVkNAp5eHg4eXo1bXRRZm85NlloOGNBQ0RGeDRIUHhZUXo0d1JZZG5IanpXNmd0OTZaQnhZdjdCbUFuejA0Z2Zwem1wCmdST25MT01CTkh6V0lQbSttT3gvTkczd3VHRGZoUlJ4S1VPdGxNQlVEZjJIYmYwVmpFLzlmeVhSQStQT2xyTlgKQ1FibzYyb1htcEk5MFgxc2dhNFdPZz09Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"

        client_certificate_config {
            issue_client_certificate = false
        }
    }

    network_policy {
        enabled  = false
        provider = "PROVIDER_UNSPECIFIED"
    }

    node_config {
        disk_size_gb      = 100
        disk_type         = "pd-standard"
        guest_accelerator = []
        image_type        = "COS"
        labels            = {}
        local_ssd_count   = 0
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
        preemptible       = false
        service_account   = "default"
        tags              = []
    }

    node_pool {
        initial_node_count  = 3
        instance_group_urls = [
            "https://www.googleapis.com/compute/v1/projects/ringed-rune-245515/zones/us-central1-b/instanceGroupManagers/gke-legsharp-default-pool-408321a9-grp",
        ]
        max_pods_per_node   = 0
        name                = "default-pool"
        node_count          = 3
        version             = "1.12.8-gke.10"

        autoscaling {
            max_node_count = 5
            min_node_count = 3
        }

        management {
            auto_repair  = true
            auto_upgrade = false
        }

        node_config {
            disk_size_gb      = 100
            disk_type         = "pd-standard"
            guest_accelerator = []
            image_type        = "COS"
            labels            = {}
            local_ssd_count   = 0
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
            preemptible       = false
            service_account   = "default"
            tags              = []
        }
    }

    timeouts {}
}
