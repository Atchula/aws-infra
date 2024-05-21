resource "aws_vpc_peering" "peering" {

    count = var.is_peering_require == true ? 1 : 0
    vpc_id = aws_vpc.vpc.id
    peer_vpc_id = var.target_vpc == "" ? local.default : var.target_vpc
    auto_accept = var.target_vpc == "" ? true : false
}