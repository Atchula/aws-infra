resource "aws_subnet" "public" {
    
    count = length(var.cidr_block_public)
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.cidr_block_public[count.index]
    availability_zone = local.az[count.index]
    map_public_ip_on_launch = true

    tags = merge(var.common_tags,{
        Name = "${local.name}-public"
})
}