variable "rootfs_storage" {
    type = string
}

variable "container_ipv4" {
    type = string
    default = "dhcp"
}

variable "container_ipv6" {
    type = string
    default = "auto"
}

variable "container_network_gateway" {
    type = string
}

variable "container_nameserver" {
    type = string
}
variable "container_network_bridge" {
  type = string
  default = "vmbr0"
}