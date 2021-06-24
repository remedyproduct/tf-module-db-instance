variable "name" {
  type        = string
  description = "Load Balancer Name"
}

variable "environment" {
  type        = string
  description = "Environment (development, qa, live, etc.)"
  default     = "development"
}

variable "storage_size" {
  type = number
  description = "Size in Gb for DB Instance"
  default = 5
}

variable "instance_class" {
  type = string
  description = "Database Instance class"
  default = "db.t2.micro"
}

variable "db_engine" {
  type = string
  description = "Database Engine (mysql, postgres, etc.)"
  default = "postgres"
}

variable "db_engine_version" {
  type = string
  description = "The version of choosen `db_engine`"
  default = "9.6.20"
}

variable "subnet_ids" {
  type = list
  description = "The list of VPC subnets Database Instance should be attached to"
}
