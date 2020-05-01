#' Clean harvested turnips prices
#'
#' @param text Characterof length 5 or 6
#'
#' @return Character of length 6.
#'
clean_turnips <- function(text){

  if (length(text) == 5) {
    clean_text <- c(text, "No tag")
  } else if (length(text) == 6) {
    clean_text <- text
    clean_text[6] <- str_trim(str_remove(clean_text[6], "Tags"))
  } else {
    clean_text <- rep(NA, 6)
  }

  return(clean_text)
}



#' Clean harvested events
#'
#' @param text Characterof length 9 or 11.
#'
#' @return Character of length 7.
#'
clean_events <- function(text) {

  if (length(text) == 9) {
    clean_text <- c(text[c(1:5, 9)], "No tag")
  } else if (length(text) == 11) {
    clean_text <- text[c(1:5, 9, 10)]
    clean_text[7] <- str_trim(str_remove(clean_text[7], "Tags"))
  } else {
    clean_text <- rep(NA, 7)
  }

  return(clean_text)
}
