resource "vcd_vapp_network" "vapp_network" {

    name                = var.name
    vapp_name           = var.vapp_name
    gateway             = cidrhost(var.cidr_gateway, 1)
    dns1                = var.dns1
    dns2                = var.dns2
    dns_suffix          = var.dns_suffix
    guest_vlan_allowed  = var.guest_vlan_allowed
    network         = var.connect_network

    static_ip_pool {
        start_address = "${cidrhost(var.cidr_gateway, 3)}"
        end_address = "${cidrhost(var.cidr_gateway, 253)}"
    }
}    