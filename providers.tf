terraform {
  
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "6.23.0"
    }
  }
backend "s3" {

    bucket = "my-terraform-state-bucket"
    key   = "terraform_practice/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
}  
}
