terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  
  backend "s3" {
    bucket         = "jay-kumar-ford"
    key            = "ong-docker"
    region         = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}