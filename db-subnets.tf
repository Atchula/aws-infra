resource "aws_db_subnet_group" "db_subnet_group" {

    subnet_ids = aws_subnet.db[*].id

    tags = merge(var.common_tags,{
        Name = "${local.name}-db-group"})
}