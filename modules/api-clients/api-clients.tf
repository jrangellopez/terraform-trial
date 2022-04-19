resource "commercetools_api_client" "all_access_2" {
    name = "All Access 2"
    scope = ["manage_project:terraform_trial"]
}

// how to save the credentials that are created from the API client?