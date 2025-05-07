variable "vpc_cidr" {
  type=string
  default = "10.0.0.0/16" 
  }

variable "common_tags"{
    default = {
        project = "roboshop"
        terraform = "true"
        environment = "dev"
    }
}

variable "vpc_tags" {
    type = map
    default  = {}

}

variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}


variable "public_subnets_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
  
}

variable "private_subnets_cidr" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
  
}

variable "database_subnets_cidr" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
  
}