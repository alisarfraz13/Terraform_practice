terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "firstserver" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "sample-instance"
  }
}


