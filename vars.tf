variable "PATH_TO_PRIVATE_KEY" {
  default = "rahulkeypair"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "rahulkeypair.pub"
}

variable "subnetCidr" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]

}

variable "availability-zone" {
  type    = list(any)
  default = ["us-west-2a", "us-west-2b"]
}
