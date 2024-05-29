terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "snackshop-terraform-state-bucket"
    key    = "rds-terraform-state"
    region = "us-west-2"
  }
}
provider "aws" {
 region = var.region
}

module "database" {
    source                           = "./modules/database"
    DB_NAME                          = var.DB_NAME
    DB_USERNAME                      = var.DB_USERNAME
    DB_PASSWORD                      = var.DB_PASSWORD
}