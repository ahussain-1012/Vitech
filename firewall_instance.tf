resource "aviatrix_firewall_instance" "firewall_instance_1" {
    firewall_name = "vitech_firewall"
    firewall_size = "m5.xlarge"
    vpc_id = aviatrix_vpc.vitech-TRANSIT-FIRENET-1.vpc_id
    firewall_image = "Palo Alto Networks VM-Series Next-Generation Firewall Bundle 1"
    
    firewall_image_version = "10.2.1"
    egress_subnet = "10.100.0.16/28"
    firenet_gw_name = "vitech-TRANSIT-GW-1"
    tags = {
        }
    management_subnet = "10.100.0.0/28"


    depends_on = [
      aviatrix_transit_gateway.transit_gateway_1
    ]
}
