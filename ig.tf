resource "aws_internet_gateway" "ig" {

    vpc_id = aws_vpc.vpc.id

    tags = merge(var.common_tags,{
           Name  = local.name        
           CreatedDate = local.date
    })

}