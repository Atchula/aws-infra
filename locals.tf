locals {
    name = "${var.common_tags.Name}-${var.common_tags.Environment}"
    date = timestamp()
}