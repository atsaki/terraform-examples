variable "api_url" {}
variable "api_key" {}
variable "secret_key" {}

provider "cloudstack" {
  api_url    = "${var.api_url}"
  api_key    = "${var.api_key}"
  secret_key = "${var.secret_key}"
}

