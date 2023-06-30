variable "environment" {
  type = string
}

variable "suffix" {
  type    = string
  default = ""
}

variable "groups" {
  type    = any
  default = {}
}
