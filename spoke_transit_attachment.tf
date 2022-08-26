resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_1" {
    spoke_gw_name = "vitech-SPOKE-GW-1"
    transit_gw_name = "vitech-TRANSIT-GW-1"

    depends_on = [
      aviatrix_transit_gateway.transit_gateway_1
    ]
}


resource "aviatrix_spoke_transit_attachment" "spoke_transit_attachment_2" {
    spoke_gw_name = "vitech-SPOKE-GW-2"
    transit_gw_name = "vitech-TRANSIT-GW-1"

    depends_on = [
      aviatrix_transit_gateway.transit_gateway_1
    ]
}
