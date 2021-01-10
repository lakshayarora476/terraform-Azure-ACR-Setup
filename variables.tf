variable "acr_name" {
  default = "TerraformACR"
}

variable "acr_sku" {
  default = "Basic"
}

variable "tags" {
  type = map(string)
  default = {
    env : "staging"
  }
}
