terraform {
  backend "s3" {
    bucket = "tiago-terraform-tfstate"
    key    = "prod1/terraform.tfstate"
    region = "us-east-2"
  }
}

