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
