resource "aws_subnet_group" "db_subnet_group" {

    subnet_ids = aws_subnet.db[*].id

    tags = tags = merge(var.common_tags,{
        Name = "${local.name}-db-group"})
}