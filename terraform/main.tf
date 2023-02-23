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

variable "cloud_init_user" {
  type = string
}

variable "cloud_init_password" {
  type = string
}

module "k3smaster_vm" {
  source      = "./modules/proxmox_vm"
  name        = "k3smaster"
  description = "Kubernetes master node"
  vmid        = 200

  cloud_init_user     = var.cloud_init_user
  cloud_init_password = var.cloud_init_password
  ipconfig            = "ip=192.168.1.110/16,gw=192.168.1.1"

  proxmox_api_url          = var.proxmox_api_url
  proxmox_api_token_id     = var.proxmox_api_token_id
  proxmox_api_token_secret = var.proxmox_api_token_secret
}

module "k3snode0_vm" {
  source      = "./modules/proxmox_vm"
  name        = "k3snode00"
  description = "Kubernetes worker node"
  vmid        = 201

  cores  = 2
  memory = 2048

  cloud_init_user     = var.cloud_init_user
  cloud_init_password = var.cloud_init_password
  ipconfig            = "ip=192.168.1.111/16,gw=192.168.1.1"

  proxmox_api_url          = var.proxmox_api_url
  proxmox_api_token_id     = var.proxmox_api_token_id
  proxmox_api_token_secret = var.proxmox_api_token_secret
}

module "k3snode1_vm" {
  source      = "./modules/proxmox_vm"
  name        = "k3snode01"
  description = "Kubernetes worker node"
  vmid        = 202

  cores  = 2
  memory = 2048

  cloud_init_user     = var.cloud_init_user
  cloud_init_password = var.cloud_init_password
  ipconfig            = "ip=192.168.1.112/16,gw=192.168.1.1"

  proxmox_api_url          = var.proxmox_api_url
  proxmox_api_token_id     = var.proxmox_api_token_id
  proxmox_api_token_secret = var.proxmox_api_token_secret
}