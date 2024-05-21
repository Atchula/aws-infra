resource "aws_eip" "eip_east1a" {
    domain = "vpc"
}

resource "aws_eip" "eip_east1b" {
    domain = "vpc"
}