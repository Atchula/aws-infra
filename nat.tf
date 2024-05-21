resource "aws_nat_gateway" "nat" {
    count = length(aws_subnet.public)
    allocation_id = aws_eip.eip[count.index]
    subnet_id = aws_subnet.public[count.index]

    tags = merge(var.common_tags,{
         Name = "${local.name}-nat-local.az[count.index]"
    })
}