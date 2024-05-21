resource "aws_eip" "eip" {
    count = length(local.az)
    domain = "vpc"
}

