terraform {
  required_version = ">= 1.0.0"
  backend "s3" {
    bucket = "jrangelpersonal"
    region = "eu-central-1"
    key    = "qa_new/terraform-commercetools-state-dev.tfstate"
  }
}
