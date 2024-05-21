###############################
## Author : Hanu
## Date : 21-05-2024
## Module : AWS-INFRA
###############################

## This module is for create below mentioned infra

##### VPC ##########

inputs :
  
1) cidr_block (optional) - This input is optional,deafult value is "10.0.0.0/16",type is  string

2) instance_tenancy (optional) - This input is optional,default value is "default",type is string

3) common_tags (optional) - This input is optional,type is map,default value is 

{ Project = "demo" 
  Environment = "dev"
  Name = "demo" }
* Name of resource after create would be "Name-Environment"
* Tags Would be  Name,Project,Environmant,CreatedDate -- "current date"

##### IG ##########

1) common_tags (optional) - This input is optional,type is map,default value is 

{ Project = "demo" 
  Environment = "dev"
  Name = "demo" }
* Name of resource after create would be "Name-Environment"
* Tags Would be  Name,Project,Environmant,CreatedDate -- "current date"

########## SUBNETS ##########

1) cidr_block_public (Mandatory) - This input to create public subntes in two regions "us-east-1a","us-east-1b",type is list of cidr blocks,user must include only two cidr blocks.
** subnet names would  be  ""Name-Environment-public"

2) cidr_block_private (Mandatory) - This input to create public subntes in two regions "us-east-1a","us-east-1b",type is list of cidr blocks,user must include only two cidr blocks.
** subnet names would  be  ""Name-Environment-private"

3) cidr_block_db (Mandatory) - This input to create public subntes in two regions "us-east-1a","us-east-1b",type is list of cidr blocks,user must include only two cidr blocks.
** subnet names would  be  ""Name-Environment-db"

############# ROUTE TABLES ###########

** route table names would  be  ""Name-Environment-private/public/db"





