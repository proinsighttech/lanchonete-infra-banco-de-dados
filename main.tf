provider "aws" {
 region = var.region
}

module "database" {
    source                           = "./modules/database"
    DB_NAME                          = var.DB_NAME
    DB_USERNAME                      = var.DB_USERNAME
    DB_PASSWORD                      = var.DB_PASSWORD
}