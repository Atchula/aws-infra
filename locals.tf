locals {
    name = "${var.common_tags.Name}-${var.common_tags.Environment}"
    date = timestamp()
    az = slice(data.aws_availability_zones.azs.names,0,2)
    
}