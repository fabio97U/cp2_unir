variable "vm_size" {
  type        = string
  description = "Tamaño de la máquina virtual"
  default     = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

variable "vms" {
  type        = list(string)
  description = "Tamaño de las máquina virtual"
  default     = ["master", "worker01", "worker02", "nfs"]
}