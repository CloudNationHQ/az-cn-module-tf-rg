variable "environment" {
  type = string
}

variable "region" {
  type    = string
  default = null
}

variable "suffix" {
  type    = string
  default = ""
}

variable "groups" {
  type    = any
  default = {}
}
