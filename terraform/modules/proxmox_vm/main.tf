resource "proxmox_vm_qemu" "vm_instance" {
  name        = var.name
  desc        = var.description
  target_node = var.target_node
  vmid        = var.vmid

  clone = var.clone

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }


  disk {
    size    = var.disk_size
    type    = "virtio"
    storage = "local-lvm"
  }

  cores   = var.cores
  sockets = 1
  memory  = var.memory
  agent   = 1
  scsihw  = "lsi"
  cpu     = "host"

  os_type    = "cloud-init"
  ipconfig0  = var.ipconfig
  ciuser     = var.cloud_init_user
  cipassword = var.cloud_init_password
}