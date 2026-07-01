#############################################
# Resource Group
#############################################

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
  default     = "rg-autoheal-webtier"
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "Australia East"
}

#############################################
# Naming
#############################################

variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "webtier"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

#############################################
# Networking
#############################################

variable "vnet_name" {
  description = "Virtual Network name."
  type        = string
  default     = "vnet-webtier"
}

variable "vnet_address_space" {
  description = "Virtual Network address space."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name."
  type        = string
  default     = "web-subnet"
}

variable "subnet_prefixes" {
  description = "Subnet address prefixes."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

#############################################
# VM Scale Set
#############################################

variable "vmss_name" {
  description = "Virtual Machine Scale Set name."
  type        = string
  default     = "vmss-webtier"
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B1s"
}

variable "instance_count" {
  description = "Number of VM instances."
  type        = number
  default     = 2
}

variable "admin_username" {
  description = "Administrator username."
  type        = string
  default     = "azureadmin"
}

variable "ssh_public_key" {
  description = "SSH public key."
  type        = string
}

#############################################
# Image
#############################################

variable "image_publisher" {
  description = "VM image publisher."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "VM image offer."
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "VM image SKU."
  type        = string
  default     = "22_04-lts-gen2"
}

variable "image_version" {
  description = "VM image version."
  type        = string
  default     = "latest"
}

#############################################
# Load Balancer
#############################################

variable "lb_name" {
  description = "Load Balancer name."
  type        = string
  default     = "lb-webtier"
}

variable "public_ip_name" {
  description = "Public IP name."
  type        = string
  default     = "pip-webtier"
}

#############################################
# Tags
#############################################

variable "tags" {
  description = "Tags applied to all Azure resources."
  type        = map(string)

  default = {
    Project     = "SelfHealing-WebTier"
    Environment = "Dev"
    Owner       = "Muhammad Hussain"
    ManagedBy   = "Terraform"
  }
}
