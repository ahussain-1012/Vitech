resource "aviatrix_spoke_gateway" "spoke_gateway_1" {
    single_az_ha = true
    gw_name = "vitech-SPOKE-GW-1"
    vpc_id = aviatrix_vpc.vitech-SPOKE-1.vpc_id
    cloud_type = 1
    vpc_reg = "us-east-1"
    gw_size = "t3.small"
    insane_mode = true
    insane_mode_az = "us-east-1a"
    account_name = "AWS"
    subnet = "10.101.0.192/26"
    enable_encrypt_volume = true
    manage_transit_gateway_attachment = false
}


resource "aviatrix_spoke_gateway" "spoke_gateway_2" {
    single_az_ha = true
    gw_name = "vitech-SPOKE-GW-2"
    vpc_id = aviatrix_vpc.vitech-SPOKE-2.vpc_id
    cloud_type = 1
    vpc_reg = "us-east-1"
    gw_size = "t3.small"
    insane_mode = true
    insane_mode_az = "us-east-1a"
    account_name = "AWS"
    subnet = "10.102.0.192/26"
    enable_encrypt_volume = true
    manage_transit_gateway_attachment = false
}
