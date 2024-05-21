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



