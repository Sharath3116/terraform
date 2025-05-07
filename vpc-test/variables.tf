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


