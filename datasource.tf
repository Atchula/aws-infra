data "aws_availability_zones" "azs"{
    filter {
        region = "us-east-1"
    }
    
}