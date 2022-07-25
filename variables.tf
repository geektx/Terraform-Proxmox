variable "pm_user" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = "YOUR-PM-USER"

}
variable "pm_password" {
  description = "The password for the proxmox user"
  type        = string
  sensitive   = true
  default     = "YOUR-PM-PASSWORD"
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = true
}

variable "pm_host" {
  description = "The hostname or IP of the proxmox server"
  type        = string
  default     = "YOUR-PM-HOST"
}

variable "pm_node_name" {
  description = "name of the proxmox node to create the VMs on"
  type        = string
  default     = "YOUR-PM-NODENAME"
}

variable "pvt_key" {
  description = "private key file"
  type        = string
  default     = "none"
}

variable "num_masters" {
  description = "Enter the number of Master VMs you want"
  default = X
}

variable "num_masters_mem" {
  description = "Enter the value for the amount of RAM for your masters. ie. 4096"
  default = "XXXX"
}

variable "master_disk_size" {
  description = "Enter the size of your Master node disks ie. 80G"
  type        = string
  default     = "YOUR-MASTER-DISK-SIZE"
}

variable "master_disk_type" {
  description = "What interface type are you using? ie. scsi"
  type        = string
  default     = "YOUR-MASTER-DISK-SIZE"
}

variable "master_disk_location" {
  description = "Where do you want to store the disk on your host? ie. zfs-mirror, local, local-lvm, etc."
  type        = string
  default     = "YOUR-MASTER-DISK-LOCATION"
}

variable "num_nodes" {
  description = "Enter the number of VMs you want for worker nodes."
  default = X
}

variable "num_nodes_mem" {
  description = "Enter the value for the amount of RAM for your worker nodes. ie. 2048"
  default = "xxxx"
}

variable "node_disk_size" {
  description = "Enter the size of your Master node disks ie. 80G"
  type        = string
  default     = "YOUR-NODE-DISK-SIZE"
}

variable "node_disk_type" {
  description = "What interface type are you using? ie. scsi"
  type        = string
  default     = "YOUR-NODE-DISK-SIZE"
}

variable "node_disk_location" {
  description = "Where do you want to store the disk on your host? ie. zfs-mirror, local, local-lvm, etc."
  type        = string
  default     = "YOUR-NODE-DISK-LOCATION"
}

variable "template_vm_name" {
  description = "Name of the template VM"
  type        = string
  default     = "YOUR-PM-VM-TEMPLATE-NAME"
}

variable "master_ips" {
  description = "List of ip addresses for master nodes"
  type        = list(string)
  default     = [
    "a.a.a.a",
    "b.b.b.b",
    "c.c.c.c",
  ]
}

variable "worker_ips" {
  description = "List of ip addresses for worker nodes"
  type        = list(string)
  default     = [  
    "m.m.m.m",
    "n.n.n.n",
    "o.o.o.o",
    "p.p.p.p",
    "q.q.q.q",
  ]
}

variable "networkrange" {
  description = "Enter as 8,16,22,24,etc. hint: 10.0.0.0/8"
  default = YOUR-NET-NUM
}

variable "gateway" {
  description = "Enter your network gateway."
  default = "YOUR-GATEWAY"
}
