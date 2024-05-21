data "aws_availability_zones" "azs"{
   state = "available"
    
}

data "aws_vpc" "default" {

   default = true

}

data "aws_route_table"  "main"{
   vpc_id = "default"
   filter {
      name = "association.main"
      values = [true]
   }

}