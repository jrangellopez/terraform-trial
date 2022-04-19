variable "client_id" {
  type    = string
  default = "OD-MHe_7Y2lTOE09H1Mvp6ag"
}

variable "client_secret" {
  type    = string
  default = "ThzhXmoJ3BUzlLgBdopW8koj3DM2Os4T"
}

variable "project_key" {
  type    = string
  default = "terraform_trial_qa"
}

variable "scopes" {
  type    = string
  default = "manage_project:terraform_trial_qa view_audit_log:terraform_trial_qa manage_api_clients:terraform_trial_qa view_api_clients:terraform_trial_qa"
}

variable "api_url" {
  type    = string
  default = "https://api.europe-west1.gcp.commercetools.com"
}

variable "token_url" {
  type    = string
  default = "https://auth.europe-west1.gcp.commercetools.com"
}

variable "bucket_name" {
  type    = string
  default = "jrangelpersonal_sonarcloud"
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

