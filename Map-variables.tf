
variable "env" {
}

variable "region" {

}

variable "inst_count" {

}

variable "ami_type" {
default = {
type = "map"
eu-central-1 = "ami-0ba441bdd9e494102"
eu-west-1 = "ami-0e61341fa75fcaa18"
}
}

variable "inst_type" {
  type = "map"
  default = {
    dev = "t2.micro"
    test = "t2.medium"
  }
}
