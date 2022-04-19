/* data "terraform_remote_state" "this" {
    backend = "s3"
    config = {
        bucket = var.bucket_name
        region = var.aws_region
        key = terraform.tfstate
    }
} */