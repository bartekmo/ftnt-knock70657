variable "region" {
    type = string
    description = "Region to deploy to"
    default = "europe-west2"
}

variable "prefix" {
    type = string
    description = "String to prepend to all created resource names (can be empty)"
    default = ""
}

variable "subnet_names" {
    type = list(string)
    description = "List of subnet names to attach to FortiGate NICs"
}

variable "labels" {
    description = "Labels for newly created resources"
    default = {}
}