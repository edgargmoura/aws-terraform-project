terraform {
  backend "s3" {
    bucket = "lab-bia-terraform"
    key = "terraform.tfstate"
    region = "us-east-1"
    profile = "bia-tf"
  }
}
