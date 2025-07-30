terraform {
  backend "s3" {
    bucket         = "pratik-s3-bucket-1753637221 "
    key            = "terraform/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
