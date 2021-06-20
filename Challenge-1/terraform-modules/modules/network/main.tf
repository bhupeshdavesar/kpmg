provider "google" {
 credentials = "${var.credentials}"
 region      = "${var.region}"
 project     = "${var.project_id}"
}

module "vpc_network" {
  source     = "./gcp-network/vpc"
  vpcname = "${var.vpcname}"

}

module "subnets" {
  source     = "./gcp-network/subnet"
  region_sub = "${var.region_sub}"
  network_self_link= "${module.vpc_network.vpcname}"

}

module "firewall" {
  source     = "./gcp-network/firewall"
  ip_ranges = "${module.subnets.ip_cidr_ranges}"
  network_self_link= "${module.vpc_network.vpcid}"

}
