resource "google_compute_subnetwork" "new_subnetwork" {
  name          = "${var.name}"
  region        = "${var.subnetwork-region}"
  network       = "${var.vpc}"
  ip_cidr_range = "${var.ip_cidr_range}"
}


module "subnet1"{
  source = "github.com/asdasd"
  vpc    = module.net-vpc1.output
  ip_cidr_range = "10.0.0.0/24"
  name          = "prod"
  region        = "europe-west1"
  secondary_ip_range = {
    pods     = "172.16.0.0/20"
    services = "192.168.0.0/24"
  }
