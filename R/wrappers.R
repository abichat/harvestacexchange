#' Scrape turnips prices
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
  scrape_and_write(scrapeacexchange::url_turnips, file)
  df <- turnips_html_to_tibble(file)
  rm(file)
  return(df)
}
