locals {
    name = "${var.common_tags.Name}-${var.common_tags.Environment}"
    date = timestamp()
    az = data.aws_availability_zones.azs.names
    
}