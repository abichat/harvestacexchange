#' Scrape webpage
#'
#' @param page The targeted URL.
#' @param path Path to write to.
#'
#' @return \code{NULL}
#'
scrape_and_write <- function(page, path){
  jspath <- system.file("extdata", "write_html.js", package = "scrapeacexchange")
  command <- paste("node", jspath, page, path)
  system(command)
  invisible()
}
