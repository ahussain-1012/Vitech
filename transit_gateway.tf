resource "aviatrix_transit_gateway" "transit_gateway_1" {
    single_az_ha = true
    gw_name = "vitech-TRANSIT-GW-1"
    vpc_id = aviatrix_vpc.vitech-TRANSIT-FIRENET-1.vpc_id
    cloud_type = 1
    vpc_reg = var.location
    connected_transit = true
    gw_size = var.firenet_gw_size
    insane_mode = true
    insane_mode_az = "us-east-1a"
    account_name = var.account_name
    subnet = "10.100.0.192/26"
    enable_encrypt_volume = true
    enable_transit_firenet = true
    ha_insane_mode_az = "us-east-1a"
    ha_subnet = "10.100.0.128/26"
    ha_gw_size = var.firenet_gw_size
}
