terraform {
  backend "s3" {
    bucket  = "terraform-bia-lab"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "tf-bia-lab"
  }
}
