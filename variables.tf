variable "environment" {}

variable "region" {
  type    = string
  default = null
}

variable "suffix" {
  type    = string
  default = ""
}

variable "groups" {
  default = {}
}
