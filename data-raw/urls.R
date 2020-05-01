## code to prepare `urls` dataset goes here

url_turnips <- "https://app.animalcrossingexchange.com/turnips/traders"

usethis::use_data(url_turnips, overwrite = TRUE)

url_events <- "https://app.animalcrossingexchange.com/events/guests"

usethis::use_data(url_events, overwrite = TRUE)
