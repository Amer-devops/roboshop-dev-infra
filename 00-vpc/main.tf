module "vpc" {
source = "git::https://github.com/Amer-devops/terraform-aws-vpc.git"
    
  
  # vpc

    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

# public subnets

    public_subnet_cidr = var.public_subnet_cidr


# private subnets

    private_subnet_cidr = var.private_subnet_cidr

# database subnets

    database_subnet_cidr = var.database_subnet_cidr

   # is_peering_required = false # if dont want peering connection  or else true or remove
}



# Declare the data source

# data "aws_availability_zones" "available" {
#   state = "available"
# }