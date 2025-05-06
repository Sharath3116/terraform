terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.97.0"
    }
 }

backend "s3" {
  bucket         = "practice-remote-state"
  key            = "foreach"
  region         = "us-east-1"
  dynamodb_table = "practice-locking"
}


}

provider "aws" {
  region = "us-east-1"
}

