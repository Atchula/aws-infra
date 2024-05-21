variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "instance_tenancy" {
    type = string
    default = "default"
}

variable "common_tags" {
    type = map
    default = {
     Project = "demo"
     Environment = "dev"
     Name = "demo"

    }

}