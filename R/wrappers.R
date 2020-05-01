#' Harvest turnips prices
#'
#' @return A tibble.
#' @export
#'
#' @examples
#' \dontrun{
#' turnips()
#' }
turnips <- function(){
  file <- tempfile(fileext = ".html")
  harvest_and_write(harvestacexchange::url_turnips, file)
  df <- turnips_html_to_tibble(file)
  rm(file)
  return(df)
}
