#' Harvest turnips prices and events
#'
#' @param dir_js The directory where all the JS dependencies are installed.
#' Default to \code{.js}.
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' \dontrun{
#' turnips()
#' events()
#' }
turnips <- function(dir_js = ".js"){
  stopifnot(file.exists(file.path(dir_js, "write_html.js")))
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_turnips, file, dir_js)
  df <- html_to_tibble_turnips(file)
  rm(file)
  return(df)
}

#' @rdname turnips
#' @export
events <- function(dir_js = ".js"){
  stopifnot(file.exists(file.path(dir_js, "write_html.js")))
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_events, file, dir_js)
  df <- html_to_tibble_events(file)
  rm(file)
  return(df)
}
