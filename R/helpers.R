#' Add elements
#'
#' Add repeted elements up to a desired length.
#'
#' @param x Vector.
#' @param desired_length Integer.
#' @param element The element to add at the end of \code{x}.
#'
#' @return A vector of length \code{desired_length}.
#'
#' @examples
#' harvestacexchange:::add_elements(1:4, 7)
add_elements <- function(x, desired_length, element = NA){
  len <- length(x)
  c(x, rep(element, desired_length - len))
}



#' Clean harvested events
#'
#' @param text Characterof length 9 or 11.
#'
#' @return Character of length 7.
#'
clean_events <- function(text) {
  clean_text <- text[1:5]
  if (length(text) == 9) {
    clean_text <- c(text[c(1:5, 9)], "No tag")
  } else if (length(text) == 11) {
    clean_text <- text[c(1:5, 9, 10)]
    clean_text[7] <- str_remove(clean_text[7], "Tags")
  } else {
    clean_text <- rep(NA, 7)
  }
  return(clean_text)
}
