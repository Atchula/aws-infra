resource "aws_route_table_association" "public" {

    count = length(aws_subnet.public)
    route_table_id = aws_route_table.public.id
    subnet_id      = aws_subnet.public[count.index].id

   

}

resource "aws_route_table_association" "private" {

    count = length(aws_subnet.private)
    route_table_id = aws_route_table.private.id
    subnet_id      = aws_subnet.private[count.index].id

   

}


resource "aws_route_table_association" "db" {

    count = length(aws_subnet.db)
    route_table_id = aws_route_table.db.id
    subnet_id      = aws_subnet.db[count.index].id

   

}