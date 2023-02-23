variable "target_node" {
  type    = string
  default = "buffo"
}
variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "A general purpose cloud-init VM"
}

variable "vmid" {
  type = number
}

variable "disk_size" {
  type    = string
  default = "30G"
}

variable "cores" {
  type    = number
  default = 1
}

variable "memory" {
  type    = number
  default = 1024
}

variable "ipconfig" {
  type = string
}

variable "clone" {
  type    = string
  default = "ubuntu-22.04-amd64"
}

variable "cloud_init_user" {
  type = string
}

variable "cloud_init_password" {
  type = string
}