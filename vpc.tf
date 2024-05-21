resource "aws_vpc" "expense" {
   
   cidr_block = var.cidr_block
   instance_tenancy = var.instance_tenancy

    tags = merge(var.common_tags,{
           Name  = local.name        
           CreatedDate = local.date
    })
}