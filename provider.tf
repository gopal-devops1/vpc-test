terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "devops1-remote-state"
    key    = "vpc-test" # our wish
    region = "us-east-1"
    dynamodb_table = "devops1-locking"
  }

}

provider "aws" {
  region = "us-east-1"
}