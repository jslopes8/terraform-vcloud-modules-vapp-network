variable "name" {
    type    = string
}
variable "vapp_name" {
    type    = string
}
variable "cidr_gateway" {
    type    = string
}
variable "dns1" {
    type    = string
}
variable "dns2" {
    type    = string
}
variable "dns_suffix" {
    type    = string
}
variable "guest_vlan_allowed" {
    type    = bool
    default = true
}
variable "connect_network" {
    type    = string
  
}
