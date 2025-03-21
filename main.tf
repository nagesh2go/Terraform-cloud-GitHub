terraform {
    required_version = "~> 1.11.1" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.89.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Devops" {
	ami = "ami-05b10e08d247fb927" 
	instance_type = "t2.micro"
}
