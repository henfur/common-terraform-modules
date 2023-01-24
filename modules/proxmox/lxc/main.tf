terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.0"
    }
  }
}

resource "proxmox_lxc" "lxc_container" {
  
  count = var.container_count

  hostname = var.container_hostname
  cores    = var.container_cores
  memory   = var.container_memory
  swap     = var.container_swap

  nameserver = var.container_nameserver

  pool = var.proxmox_pool

  rootfs {
    storage = var.rootfs_storage
    size    = var.container_disk_size
  }

  network {
    name   = "eth0"
    bridge = var.container_network_bridge
    ip     = var.container_ipv4
    ip6    = var.container_ipv6
    gw     = var.container_network_gateway
  }

  ostemplate   = var.lxc_ostemplate
  ssh_public_keys = var.ssh_key
  target_node  = var.proxmox_host
  unprivileged = var.container_unprivileged
  onboot       = var.container_onboot
  start        = var.container_start
}