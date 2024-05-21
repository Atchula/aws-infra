resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.public[0].id

    tags = merge(var.common_tags,{
         Name = "${local.name}-nat"
    })
}