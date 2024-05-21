resource "aws_route"  "route_peering" {
    count = is_peering_require == true ? 1 : 0
    route_table_id = aws_route_table.public.id
    destination_cidr_block = aws.target_vpc == "" ? data.aws_vpc.default.cidr_block : aws.target_vpc.cidr_block
    vpc_peering_connection_id = aws_vpc_peering.peering.id
}