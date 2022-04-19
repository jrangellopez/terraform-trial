resource "commercetools_project_settings" "project" {
  name = var.project_key
  countries = [
    "DE",
    "NL",
    "ES",
    "IN",
    "FR",
    "IT",
    "AT",
    "HU"
  ]
  currencies = [
    "EUR",
    "INR",
    "USD"
  ]
  languages = [
    "de",
    "nl",
    "es",
    "en"
  ]
  messages = {
    enabled = true
  }
}
