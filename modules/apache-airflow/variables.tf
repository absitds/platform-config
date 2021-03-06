variable "env_prefix_hypon" {}

variable "env_prefix_underscore" {}

variable "env_location" {}

variable "vnet_name" {}

variable "vnet_rg_name" {}

variable "vnet_address_space" {}

variable "vnet_start_ip" {}

variable "vnet_end_ip" {}

variable "shrd_srv_arflw_snet_addr_pfx" {}

variable "shrd_srv_arflw_nsg_ibnd_rl" {
  type = "list"
}

variable "shrd_srv_arflw_nsg_ibnd_rl_src_pfx" {
  type = "list"
}

variable "shrd_srv_arflw_nsg_ibnd_rl_dst_pfx" {
  type = "list"
}

variable "shrd_srv_arflw_nsg_obnd_rl" {
  type = "list"
}

variable "shrd_srv_arflw_nsg_obnd_rl_src_pfx" {
  type = "list"
}

variable "shrd_srv_arflw_nsg_obnd_rl_dst_pfx" {
  type = "list"
}

variable "shrd_srv_arflw_lb_prb_prt" {
  type = "list"
}

variable "shrd_srv_arflw_lb_bck_prt" {
  type = "list"
}

variable "shrd_srv_arflw_lb_fnt_prt" {
  type = "list"
}

variable "shrd_srv_arflw_vm_ip" {
  type = "list"
}

variable "shrd_srv_arflw_vm" {
  type = "map"
}

variable "shrd_srv_arflw_vm_adm"{}

variable "shrd_srv_arflw_vm_pswd" {}

variable "env_disable_lk" {}

variable "shrd_srv_arflw_vm_nm" {
  type = "list"
}
variable "shrd_srv_arflw_vm_hst_nm" {
  type = "list"
}

variable "itds_shrd_srv_acr_admn" {
  default = ""
}
variable "itds_shrd_srv_acr_admn_pswd" {
  default = ""
}
variable "itds_shrd_srv_acr_srvr" {
  default = ""
}
variable "itds_shrd_srv_acr_repo" {
  default = ""
}
variable "itds_shrd_srv_acr_repo_tg" {
  default = ""
}

variable "shrd_srv_arflw_lb_ip" {
  default = ""
}