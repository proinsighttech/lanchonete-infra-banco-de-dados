// *************************************** //
// ******** Environment Variables ******** //
// *************************************** //

//Region
variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}

// Availability Zones
variable "availability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

//Environment
variable "environment" {
  description = "Environment"
  type = string
  default = "dev"
}

//Author
variable "author" {
  description = "Author"
  type        = string
  default     = "ProInsightTech"
}

// *************************************** //
// ********** Database Variables ********* //
// *************************************** //

variable "DB_NAME" {
  description = "The name of the database"
  default     = "proinsight"
}

variable "DB_HOST" {
  description = "The host of the database"
  default     = "localhost"
}

variable "DB_USERNAME" {
  description = "The username for the database"
  default     = "root"
}

variable "DB_PASSWORD" {
  description = "The password for the database"
  default     = "12345678"
}