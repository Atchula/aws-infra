## VPC,IG Variables

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

### SUBNETS Variables #####

variable "cidr_block_public" {
    type = list(string)
    validation {
        condition = length(var.cidr_block_public) == 2
        error_message = "Please Provide Only Two Public cidr Blocks"
    }
}

variable "cidr_block_private" {
    type = list(string)
    validation {
        condition = length(var.cidr_block_private) == 2
        error_message = "Please Provide Only Two private cidr Blocks"
    }
}

variable "cidr_block_db" {
    type = list(string)
    validation {
        condition = length(var.cidr_block_db) == 2
        error_message = "Please Provide Only Two db cidr Blocks"
    }
}