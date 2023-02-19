variable "resource_group_name" {
  type    = string
  default = "rg-dev-sample-001"
}

variable "location" {
  type    = string
  default = "southindia"
}

variable "virtual_network_name" {
  type    = string
  default = "vnet-dev-sample-001"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

#============= subnet type map(any) =========#
variable "subnets" {
  type = map(any)
  default = {
    subnet_001 = {
      name             = "subnet-dev-001"
      address_prefixes = ["10.0.1.0/24"]
    }
    subnet_002 = {
      name             = "subnet-dev-002"
      address_prefixes = ["10.0.2.0/24"]
    }
  }
}