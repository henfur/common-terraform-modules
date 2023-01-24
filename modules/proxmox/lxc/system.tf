variable "container_count" {
  type = number
  default = 1
}

variable "container_hostname" {
  type = string
  default = "new-lxc-container"
}

variable "container_disk_size" {
    type = string
    default = "8G"
}

variable "container_cores" {
    type = number
    default = 2
}

variable "container_memory" {
    type = number
    default = "2048"
}

variable "container_swap" {
    type = number
    default = "1024"
}

variable "container_unprivileged" {
  type = bool
  default = false
}

variable "container_onboot" {
  type = bool
  default = true
}

variable "container_start" {
  type = bool
  default = true
}