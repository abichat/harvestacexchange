#' Harvest webpage
#'
#' @param page The targeted URL.
#' @param path Path to write to.
#' @inheritParams turnips
#'
#' @return \code{NULL}
#'
harvest_and_write <- function(page, path, dir_js = ".js"){
  jspath <- file.path(dir_js, "write_html.js")
  command <- paste("node", jspath, page, path)
  system(command)
  invisible()
}
