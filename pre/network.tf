resource "google_compute_network" "external" {
    name = "${var.prefix}-external"
    auto_create_subnetworks = false
}

resource "google_compute_network" "production" {
    name = "${var.prefix}-production"
    auto_create_subnetworks = false
}

resource "google_compute_network" "hasync" {
    name = "${var.prefix}-hasync"
    auto_create_subnetworks = false
}

resource "google_compute_network" "port4" {
    name = "${var.prefix}-port4"
    auto_create_subnetworks = false
}

resource "google_compute_network" "management" {
    name = "${var.prefix}-management"
    auto_create_subnetworks = false
}

resource "google_compute_network" "dmz" {
    name = "${var.prefix}-dmz"
    auto_create_subnetworks = false
}



################################################

resource "google_compute_subnetwork" "external" {
    name = "${var.prefix}-external"
    network = google_compute_network.external.id
    region = var.region
    ip_cidr_range = "10.0.0.0/24"
}

resource "google_compute_subnetwork" "production" {
    name = "${var.prefix}-production"
    network = google_compute_network.production.id
    region = var.region
    ip_cidr_range = "10.104.1.0/24"
}

resource "google_compute_subnetwork" "hasync" {
    name = "${var.prefix}-hasync"
    network = google_compute_network.hasync.id
    region = var.region
    ip_cidr_range = "10.0.1.0/24"
}

resource "google_compute_subnetwork" "port4" {
    name = "${var.prefix}-port4"
    network = google_compute_network.port4.id
    region = var.region
    ip_cidr_range = "10.0.4.0/24"
}

resource "google_compute_subnetwork" "management" {
    name = "${var.prefix}-management"
    network = google_compute_network.management.id
    region = var.region
    ip_cidr_range = "10.104.4.0/24"
}

resource "google_compute_subnetwork" "dmz" {
    name = "${var.prefix}-dmz"
    network = google_compute_network.dmz.id
    region = var.region
    ip_cidr_range = "10.168.104.0/24"
}