variable "resource_group_name" {
  description = "(Required) The name of the VNET resource group."
  type        = string
}

variable "vnet_name" {
  description = "(Required) The name of the virtual network to output the data."
  type        = string
}

variable "subnets" {
  description = "(Optional) Name list of specific subnet to output detailed data."
  type = list(object({
    name = string
  }))
}
