resource "aws_route_table" "public" {

    vpc_id = aws_vpc.vpc.id

    tags = merge(var.common_tags,{
        Name = "${local.name}-public"
    })
}

resource "aws_route_table" "private" {
    vpc_id = aws_vpc.vpc.id

     tags = merge(var.common_tags,{
        Name = "${local.name}-private"
    })
}

resource "aws_route_table" "db" {
    vpc_id = aws_vpc.vpc.id

     tags = merge(var.common_tags,{
        Name = "${local.name}-db"
    })
}