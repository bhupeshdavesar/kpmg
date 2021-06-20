output "vpcname" {
  value = "${module.vpc_network.vpcname}"
}

output "vpcid" {
  value = "${module.vpc_network.vpcid}"
}

output "out_custom_vpc_network_self_link" {
   value = "${module.vpc_network.out_custom_vpc_network_self_link}"
}
