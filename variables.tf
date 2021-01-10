// variables for VM
variable "config" {
  type = map

  default = {
    "namespace"                     = "docker"
    "vm_size"                       = "Standard_B1s"
    "vm_image_publisher"            = "Canonical"
    "vm_image_offer"                = "UbuntuServer"
    "storage_account_type"          = "Standard_LRS"
    "network_address_prefix"        = "10.0.0.0/16"
    "network_subnet_prefix"         = "10.0.0.0/24"
    "network_public_ipaddress_type" = "Static"
  }
}
variable "ubuntu_os_value" {
    type = map

    default = {
        "18.04.5-LTS" = "18.04.5-LTS"
        "20.04-LTS" = "20.04-LTS"
    }
}
// variables for Azure Provider
variable "resource_group_name" {
  type = string
  description = " Azure Resource Group Name"
  default = "dev-vm"
}
 
variable "azure_client_certificate_path" {
  type = string
  description = "client certificate path"
}
variable "azure_client_certificate_password" {
  type = string
# sensitive is support in 0.14 or later
# sensitive = true
  description = "client certificate password"
}
variable "azure_subscription_id" {
  type = string
  description = "subscription id" 
}
variable "azure_client_id" {
  type = string
  description = "Azure Client ID"
}
variable "azure_tenant_id"{
  type = string
  description = "Tenanat ID"
}

// variables for VM
variable "prefix" {
  description = "prefix for resource"
  default = "dev-vm"
}
variable "location" {
  type = string
  description = "Azure location"
  default = "australiasoutheast"
}
variable "instance_number" {
  description = " number of VM"
  default = 1
}
// Variables for local
locals {
  azure_config= <<-EOT
      resource_group_name = "dev"
      location = "australiasoutheast"
      client_certificate_path = ${var.azure_client_certificate_path}
      client_certificate_password = ${var.azure_client_certificate_password}
      subscription_id = ${var.azure_subscription_id}
      client_id = ${var.azure_client_id}
      tenant_id = ${var.azure_tenant_id}
  EOT
}
