module "fgtha" {
  source = "git::github.com/fortinet/terraform-google-fgt-ha-ap-lb?ref=v1.1"

  prefix       = var.prefix
  subnets      = var.subnet_names
  machine_type = "n2-standard-8"
  zones = [
    "${var.region}-b",
    "${var.region}-c"
  ]
  labels = var.labels
  image = {
    version = "7.4.4"
  }
  frontends = ["eip1"]
  ha_port   = "port3"
  mgmt_port = "port5"
  license_files = [
    "dummy1.lic",
    "dummy2.lic"
  ]
}