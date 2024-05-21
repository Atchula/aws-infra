data "aws_availability_zones" "azs"{
   state = "available"
    
}

data "aws_vpc" "default" {

   default = true

}

data "aws_route_table" "def" {
  vpc_id = aws_vpc.this.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}