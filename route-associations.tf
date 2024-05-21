resource "aws_route_table_association" "public" {

    count = length(aws_subnet.public)
    route_table_id = aws_route_table.public
    subnet_id      = aws_subnet.public[count.index]

   

}

resource "aws_route_table_association" "private" {

    count = length(aws_subnet.private)
    route_table_id = aws_route_table.private
    subnet_id      = aws_subnet.private[count.index]

   

}


resource "aws_route_table_association" "db" {

    count = length(aws_subnet.db)
    route_table_id = aws_route_table.db
    subnet_id      = aws_subnet.db[count.index]

   

}