resource "aviatrix_vpc" "vitech-TRANSIT-FIRENET-1" {
    cloud_type = 1
    account_name = var.account_name
    name = "vitech-TRANSIT-FIRENET-1"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = true
    region = var.location
    cidr = "10.100.0.0/16"
}

resource "aviatrix_vpc" "vitech-SPOKE-1" {
    cloud_type = 1
    account_name = var.account_name
    name = "vitech-SPOKE-1"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = var.location
    cidr = "10.101.0.0/24"
}


resource "aviatrix_vpc" "vitech-SPOKE-2" {
    cloud_type = 1
    account_name = var.account_name
    name = "vitech-SPOKE-2"
    aviatrix_transit_vpc = false
    aviatrix_firenet_vpc = false
    region = var.location
    cidr = "10.102.0.0/24"
}
