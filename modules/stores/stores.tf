resource "commercetools_store" "standard-de" {
    name = {
        de = "Standard Laden Deutschland",
        en = "Standard Store Germany"
        es = "Tienda Standard Alemania"
    }
    key = "standard-de"
    languages = [
        "de"
    ]
}

resource "commercetools_store" "standard-nl" {
    name = {
        de = "Standard Laden Niederlanden",
        en = "Standard Store Netherlands"
        es = "Tienda Standard Paises Bajos"
    }
    key = "standard-nl"
    languages = [
        "nl"
    ]
}

resource "commercetools_store" "standard-in" {
    name = {
        de = "Standard Laden Indien",
        en = "Standard Store India"
        es = "Tienda Standard India"
    }
    key = "standard-in"
    languages = [
        "en"
    ]
}