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
  df <- turnips_html_to_tibble(file)
  rm(file)
  return(df)
}

#' @rdname turnips
events <- function(){
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_events, file)
  df <- events_html_to_tibble(file)
  rm(file)
  return(df)
}
