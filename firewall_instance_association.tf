resource "aviatrix_firewall_instance_association" "firewall_instance_association_1" {
    vpc_id = aviatrix_vpc.vitech-TRANSIT-FIRENET-1.vpc_id
    firenet_gw_name = "vitech-TRANSIT-GW-1"
    instance_id = aviatrix_firewall_instance.firewall_instance_1.instance_id
    firewall_name = "vitexh_firewall"
    lan_interface = aviatrix_firewall_instance.firewall_instance_1.lan_interface
    management_interface = aviatrix_firewall_instance.firewall_instance_1.management_interface
    egress_interface = aviatrix_firewall_instance.firewall_instance_1.egress_interface
    attached = true



    depends_on = [
      aviatrix_transit_gateway.transit_gateway_1
    ]
}
