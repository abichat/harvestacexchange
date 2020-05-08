#' Harvest turnips prices and events
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' \dontrun{
#' turnips()
#' events()
#' }
turnips <- function(){
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_turnips, file)
  df <- html_to_tibble_turnips(file)
  rm(file)
  return(df)
}

#' @rdname turnips
#' @export
events <- function(){
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_events, file)
  df <- html_to_tibble_events(file)
  rm(file)
  return(df)
}
