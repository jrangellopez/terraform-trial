resource "commercetools_shipping_zone" "europe" {
    name = "Europe"
    description = "Countries within Europe"
    location {
        country = "DE"
    }
    location {
        country = "NL"
    }
    location {
        country = "ES"
    }
    location {
        country = "FR"
    }
}

resource "commercetools_shipping_zone" "india" {
    name = "India"
    description = "India"
    location {
        country = "IN"
    }
}