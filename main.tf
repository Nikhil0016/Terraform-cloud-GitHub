terraform {
    required_version = "~> 1.5.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Nickinfra" {
	ami = "ami-0f34c5ae932e6f0e4" 
	instance_type = "t2.micro"
}
